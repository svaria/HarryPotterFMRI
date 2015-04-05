function [trainingX,trainingY, validationX,validationY] = ...
    genTrainingAndValidationSetFeatureSubset(data, time, trainingRatio,...
    nFeatures)


% take random sample of training points and remainder is validation
perm = randperm(size(data,1));

tSize = floor(trainingRatio*size(data,1));
trainingX = data(perm(1:tSize),:);
trainingY = time(perm(1:tSize),2);
validationX = data(perm(tSize+1:end),:);
validationY = time(perm(tSize+1:end),2);

colsToKeepTrain = preprocessData(trainingX, trainingY);
colsToKeepVal = preprocessData(validationX, validationY);
colsToKeep = intersect(colsToKeepTrain, colsToKeepVal);

% Choose a random sample of features
nCols = length(colsToKeep);
perm = randperm(nCols);
colsToKeep = colsToKeep(perm(1:nFeatures));

trainingX = trainingX(:, colsToKeep);
validationX = validationX(:, colsToKeep);

end