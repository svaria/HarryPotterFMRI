function [valErr, trainingErr, nb] = featureSubsetClassify(data, time, ...
    trainingRatio, nFeatures)
% Top level function that uses random subset of features
% nFeatures = number of features to keep

[tX,tY, vX,vY] = genTrainingAndValidationSetFeatureSubset(data, ...
    time, trainingRatio, nFeatures);

[valErr, trainingErr, nb] = classifyTraining(tX, tY, vX, vY);

end