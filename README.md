# HarryPotterFMRI

To run on a subject's data:

filename = 'subject_1.mat';  % can be any subject's data
ratio = 0.75 % ratio of training to test data
[validationError, trainingError, naiveBayesClassifier] = makeAndClassify(filename, ratio);
