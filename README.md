# HarryPotterFMRI

To run on a subject's data:

filename = 'subject_1.mat';  % can be any subject's data <br>
ratio = 0.75 % ratio of training to test data <br>
[validationError, trainingError, naiveBayesClassifier] = makeAndClassify(filename, ratio);
