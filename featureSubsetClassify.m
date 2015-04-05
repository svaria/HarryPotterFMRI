function [valErr, trainingErr, nb] = featureSubsetClassify(filename, ...
    trainingRatio, nFeatures)
% Top level function that uses random subset of features
% nFeatures = number of features to keep

subject = load(filename);
[tX,tY, vX,vY] = genTrainingAndValidationSetFeatureSubset(subject.data, ...
    subject.time, trainingRatio, nFeatures);

[valErr, trainingErr, nb] = classifyTraining(tX, tY, vX, vY);

end