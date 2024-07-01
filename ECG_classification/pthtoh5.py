import os
os.environ['TF_ENABLE_ONEDNN_OPTS'] = '0'
import torch
import onnx
from onnx2keras import onnx_to_keras
import keras
import tensorflow as tf
from modeltest import CustomModel
import json

def pth_to_onnx(input_path, output_path):
    # Load the checkpoint (dictionary)
    checkpoint = torch.load(input_path)
    params = json.load(open('config_PKT.json', 'r'))
    # Extract the model from the dictionary
    torch_model = CustomModel(in_length=params['in_length'], 
                        in_channels=params['in_channels'],  
                        num_classes=params['num_classes'], 
                        first_width=params['first_width']) # Create an instance of your model
    torch_model.load_state_dict(checkpoint['model_state_dict'])  # Load the model's state dictionary
    torch_model.eval()  # Set the model to evaluation mode
    
    # Sample input tensor
    x = torch.randn(size=(1, 1, 320))
    
    # Export to ONNX
    export_onnx_file = output_path
    torch.onnx.export(torch_model,
                      x,
                      export_onnx_file,
                      opset_version=12,
                      do_constant_folding=True,
                      input_names=["input"],
                      output_names=["output"],
                      dynamic_axes={"input": {0: "batch_size"}, "output": {0: "batch_size"}})
    
    onnx_model = onnx.load('F:/Ky2nam3/do_an_1/code/mit_bih/h5Result/modelall.onnx')
    onnx.checker.check_model(onnx_model)
    print(onnx.helper.printable_graph(onnx_model.graph))


if __name__ == '__main__':
    input_path = 'F:/Ky2nam3/do_an_1/code/mit_bih/training/max_checkpoint.pth'
    output_path = 'F:/Ky2nam3/do_an_1/code/mit_bih/h5Result/modelall.onnx'
    pth_to_onnx(input_path, output_path)





