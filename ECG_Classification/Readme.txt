DATABASE: 
The MIT-BIH database contains 48 half-hour excerpts of ambulatory dual-channel ECG recordings, obtained from 47 subjects studied by the Beth Israel Hospital Laboratory between 1975 and 1979. 
All 48 ECG recordings were sampled at 360 Hz, lasted more than 30 minutes, and were obtained from PhysioNet. The dataset contains only two channels, with most recordings taken from the MLII channel. 
In this project, data from the MLII channel is used, except for recordings 102 and 104, which are from the V2 channel. 
The waves are classified into five labels: N (normal), A (APC), V (PVC), L (LBBB), and R (RBBB).

IMLEMENTATION
During the training process, the weights of the 1-D CNN network are initialized using the He_normal algorithm. The Adam optimization algorithm is used during back-propagation to accelerate the training process.
The batch size for the training and validation sets is set to 20 and 5, respectively. 
The learning rate before 40 epochs is 0.0001, while after 40 epochs, the learning rate is set to 0.00001, and training is carried out for 100 epochs.
The metrics used to evaluate the performance of the proposed 1-D CNN model are accuracy (ACC), sensitivity (SEN), specificity (SPEC), and positive predictive value (PPV). 
These metrics are calculated based on the normalized confusion matrix, using values such as true positive (TP), true negative (TN), false positive (FP), and false negative (FN).
