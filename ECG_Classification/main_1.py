import os
import time
import pickle
import random
import csv
from datetime import datetime

import numpy as np
import pandas as pd
from sklearn.metrics import confusion_matrix, accuracy_score, precision_score, recall_score, f1_score
from sklearn.metrics import ConfusionMatrixDisplay, precision_recall_fscore_support
import matplotlib.pyplot as plt
from torchvision import transforms
from util20 import get_loaders


import torch
from torch.utils.data import Dataset, DataLoader

import tqdm
import wfdb

from preprocessing import butter_bandpass_filter
from modeltest import CustomModel
from model_test import MiniInceptionTime, MiniInceptionTimeV1
import json

def initialize_seed(seed):
    random.seed(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    if torch.cuda.is_available():
        torch.cuda.manual_seed_all(seed)
        torch.backends.cudnn.deterministic = True


def initialize_log_directory():
    if not os.path.exists(os.path.join(os.getcwd(), 'logs')):
        os.mkdir(os.path.join(os.getcwd(), 'logs'))


def init_dir(save_model_path):
    if not os.path.exists(save_model_path):
        os.mkdir(save_model_path)
    if not os.path.exists(os.path.join(save_model_path, 'checkpoints')):
        os.mkdir(os.path.join(save_model_path, 'checkpoints'))


def initialization(seed=0):
    initialize_seed(seed)
    initialize_log_directory()


def calculate_metrics(y_true, y_pred, average='macro'):
    # # Calculate confusion matrix
    # tn, fp, fn, tp = confusion_matrix(y_true, y_pred).ravel()
    #
    # # Calculate accuracy
    # accuracy = accuracy_score(y_true, y_pred)
    #
    # # Calculate sensitivity (recall)
    # sensitivity = recall_score(y_true, y_pred)
    #
    # # Calculate specificity
    # specificity = tn / (tn + fp)
    #
    # # Calculate positive predictive value (PPV or precision)
    # ppv = precision_score(y_true, y_pred)
    #
    # # Calculate F1 score
    # f1 = f1_score(y_true, y_pred)

    # Confusion matrix
    cm = confusion_matrix(y_true, y_pred)

    # Accuracy
    accuracy = accuracy_score(y_true, y_pred)

    # Sensitivity (Recall)
    sensitivity = recall_score(y_true, y_pred, average=average)

    # Specificity
    specificity = []
    for i in range(len(cm)):
        tn = np.sum(cm) - (np.sum(cm[i, :]) + np.sum(cm[:, i]) - cm[i, i])
        fp = np.sum(cm[:, i]) - cm[i, i]
        specificity.append(tn / (tn + fp))
    specificity = sum(specificity) / len(specificity)

    # PPV (Precision)
    ppv = precision_score(y_true, y_pred, average=average)

    # F1 Score
    f1 = f1_score(y_true, y_pred, average=average)

    metrics = {
        'acc': accuracy,
        'sen': sensitivity,
        'spec': specificity,
        'ppv': ppv,
        'f1': f1,
        'cm': cm,
    }

    return metrics



def train_one_epoch(data_loader, model, criterion, optimizer, device='cpu'):
    training_loss = 0
    training_acc = 0
    data_iterator = tqdm.tqdm(data_loader, bar_format='{l_bar}{bar:10}{r_bar}{bar:-10b}')
    model.train()
    for i, samples in enumerate(data_iterator):
        # Get data
        # waveform, labels = samples['waveform'], samples['label']
        tensorData, _, labels, _ = samples
        bs, c, h, w = tensorData.shape
        x = tensorData.reshape(bs, c, h * w)
        # x = tensorData

        # print(x.shape, labels.shape)

        # clear gradient
        optimizer.zero_grad()

        # Forward pass
        outputs = model(x.to(device))

        # calculate loss
        loss = criterion(outputs.to(device), labels.to(device))
        acc = (outputs.argmax(1).cpu().int() == labels).sum() / labels.shape[0]

        # Backprop and optimize
        loss.backward()
        optimizer.step()

        # update running metrics
        training_loss += loss.item()
        training_acc += acc

    training_loss /= len(data_loader)
    training_acc /= len(data_loader)

    return training_loss, training_acc


def evaluate(data_loader, model, criterion, device='cpu'):
    validation_loss = 0
    validation_acc = 0
    model_results = []
    targets = []
    data_iterator = tqdm.tqdm(data_loader, bar_format='{l_bar}{bar:10}{r_bar}{bar:-10b}')
    model.eval()
    with torch.no_grad():
        for i, samples in enumerate(data_iterator):
            # Get data
            # waveform, labels = samples['waveform'], samples['label']
            tensorData, _, labels, _ = samples
            bs, c, h, w = tensorData.shape
            x = tensorData.reshape(bs, c, h * w)
            # x = tensorData

            # Forward pass
            outputs = model(x.to(device))

            # calculate loss
            loss = criterion(outputs.to(device), labels.to(device))
            acc = (outputs.argmax(1).cpu().int() == labels).sum() / labels.shape[0]

            # update running metrics
            validation_loss += loss.item()
            validation_acc += acc

            model_results.extend(outputs.argmax(1).cpu().detach().numpy())
            targets.extend(labels.cpu().numpy())

    validation_loss /= len(data_loader)
    validation_acc /= len(data_loader)
    # print(model_results)
    # print(targets)
    metrics = calculate_metrics(np.array(targets), np.array(model_results), average='weighted')

    return validation_loss, validation_acc, metrics


def train(params, save_model_path, device='cpu'):
    print('Device:', torch.cuda.get_device_name(device) if device != 'cpu' else 'cpu')

    # get data
    train_loader, val_loader, _, = get_loaders(params, None)

    # define model
    model = CustomModel(in_length=params['in_length'], in_channels=params['in_channels'], 
                        first_width=params['first_width'], num_classes=params['num_classes']).to(device)
    #model = MiniInceptionTime(in_channel=1, d_model=32, num_classes=5).to(device)
    #model = MiniInceptionTimeV1(in_channel=1, d_model=32, num_classes=5).to(device)
    print('Number of model parameters:', sum(p.numel() for p in model.parameters() if p.requires_grad))

    # get criterion, optimizer/scheduler
    criterion = torch.nn.CrossEntropyLoss()
    optimizer = torch.optim.Adam(model.parameters(), lr=params['learning_rate_1'])

    num_epochs = params['epochs']
    best_loss = float('inf')
    best_score = 0
    train_loss_log = []
    validation_loss_log = []

    print('Start training...')
    print('Epochs:', num_epochs)
    print('Iterations per training epoch:', len(train_loader))
    print('Iterations per validation epoch:', len(val_loader))

    for epoch in range(num_epochs):
        print(f'####### Epoch [{epoch + 1}/{num_epochs}] #######')
        for param_group in optimizer.param_groups:
            if (epoch + 1) >= 40:
                param_group['lr'] = 0.00001
            print('LR: {:.6f}'.format(param_group['lr']))

        # training
        t0 = time.time()
        training_loss, training_acc = train_one_epoch(train_loader, model, criterion, optimizer, device)

        # validation
        validation_loss, validation_acc, metrics = evaluate(val_loader, model, criterion, device)
        # print(metrics)

        # calculate global loss/metrics and log process
        print("Epoch[{}/{}] - Loss: {:.4f} - Accuracy: {:.4f} - ValLoss: {:.4f} - ValAccuracy: {:.4f}, ETA: {:.0f}s"
              .format(epoch + 1, num_epochs, training_loss, training_acc, validation_loss, validation_acc,
                      time.time() - t0))
        print('ACC: {:.4f} | SEN: {:.4f} | SPEC: {:.4f} | PPV: {:.4f} | F1: {:.4f}'.format(
            metrics['acc'],
            metrics['sen'],
            metrics['spec'],
            metrics['ppv'],
            metrics['f1']
        ))

        train_loss_log.append(training_loss)
        validation_loss_log.append(validation_loss)

        # select and save checkpoint
        torch.save({
            'model_state_dict': model.state_dict(),
            'optimizer_state_dict': optimizer.state_dict(),
        }, os.path.join(os.getcwd(), f'{save_model_path}/checkpoints/checkpoint_epoch{epoch + 1}.pth'))

        if best_loss > validation_loss:
            best_loss = validation_loss
            print(f'Save best loss checkpoint at epoch {epoch + 1}')
            torch.save({
                'model_state_dict': model.state_dict(),
                'optimizer_state_dict': optimizer.state_dict(),
            }, os.path.join(os.getcwd(), f'{save_model_path}/checkpoints/best_loss_checkpoint.pth'))

        score = metrics['f1']
        if score > best_score:
            best_score = score
            print(f'Save best metrics checkpoint at epoch {epoch + 1}')
            torch.save({
                'model_state_dict': model.state_dict(),
                'optimizer_state_dict': optimizer.state_dict(),
            }, os.path.join(os.getcwd(), f'{save_model_path}/checkpoints/best_metrics_checkpoint.pth'))

    loss_history = {
        'train': train_loss_log,
        'validation': validation_loss_log,
    }
    with open(f'{save_model_path}/history.pkl', 'wb') as f:
        pickle.dump(loss_history, f)


def test(params, save_model_path, mode='metric', device='cpu'):
    print('Device:', torch.cuda.get_device_name(device) if device != 'cpu' else 'cpu')

    # get data
    _, _, test_loader = get_loaders(params, None)

    # load model
    model = CustomModel(in_length=params['in_length'], in_channels=params['in_channels'], 
                        first_width=params['first_width'], num_classes=params['num_classes']).to(device)
    #model = MiniInceptionTimeV1(in_channel=params['in_channels'], 
    #                            d_model=params['in_length'], num_classes=num_classes=params['num_classes']).to(device)
    print('Number of model parameters:', sum(p.numel() for p in model.parameters() if p.requires_grad))

    if mode == 'metric':
        checkpoint = torch.load(os.path.join(os.getcwd(), f'{save_model_path}/checkpoints/best_metrics_checkpoint.pth'),
                                map_location=device)
    else:
        checkpoint = torch.load(os.path.join(os.getcwd(), f'{save_model_path}/checkpoints/best_loss_checkpoint.pth'),
                                map_location=device)

    model.load_state_dict(checkpoint['model_state_dict'])
    model.eval()

    test_acc = 0
    model_results = []
    targets = []
    test_iterator = tqdm.tqdm(test_loader, bar_format='{l_bar}{bar:10}{r_bar}{bar:-10b}')
    for i, samples in enumerate(test_iterator):
        # Get data
        # waveform, labels = samples['waveform'], samples['label']
        tensorData, _, labels, _ = samples
        bs, c, h, w = tensorData.shape
        x = tensorData.reshape(bs, c, h * w)
        # x = tensorData

        # Forward pass
        outputs = model(x.to(device))
        # p_outputs = torch.sigmoid(outputs)

        # calculate metrics
        acc = (outputs.argmax(1).cpu().int() == labels).sum() / labels.shape[0]
        test_acc += acc.item()

        model_results.extend(outputs.argmax(1).cpu().detach().numpy())
        targets.extend(labels.cpu().numpy())

    test_acc /= len(test_iterator)
    metrics = calculate_metrics(np.array(targets), np.array(model_results), average='weighted')

    with open(f'{save_model_path}/test_best_{mode}_checkpoint_prediction_w1.csv', 'w') as f:
        writer = csv.writer(f)
        writer.writerow(['Accuracy', 'Sensitivity', 'Specificity', 'PPV', 'F1-score'])
        # tn, fp, fn, tp = metrics['cm'].ravel()
        writer.writerow([round(metrics['acc'], 4), round(metrics['sen'], 4),
                         round(metrics['spec'], 4), round(metrics['ppv'], 4), round(metrics['f1'], 4)])

    disp = ConfusionMatrixDisplay(confusion_matrix=metrics['cm'], display_labels=['Normal', 'LBBB', 'RBBB', 'PVC', 'APB'])
    disp.plot(cmap=plt.cm.Blues)
    # plt.show()
    plt.savefig(f'{save_model_path}/test_best_{mode}_cm_w1')


if __name__ == '__main__':

    params = json.load(open('config_PKT.json', 'r'))
    # initialization
    initialization(42)
    current_time = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")  
    model_name = 'CustomModel'
    #model_name = 'MiniInceptionTimeV1'
    #save_model_path = f'logs/{current_time}_{model_name}'
    save_model_path = 'F:/Ky2nam3/do_an_1/ECG_Classification/logs/2024-09-02_20_36_26_CustomModel'
    init_dir(save_model_path)

    # train and test
    device = 'cuda'
    #train(params, save_model_path, device)
    test(params, save_model_path, 'metric', device)
    test(params, save_model_path, 'loss', device)



