function [trainingX,trainingY, validationX,validationY] = ...
    genTrainingAndValidationSet(data, time, ratio)


    % take random sample of training points and remainder is validation
    perm = randperm(size(data,1));
    
    tSize = floor(ratio*size(data,1));
    trainingX = data(perm(1:tSize),:);
    trainingY = time(perm(1:tSize),2);
    validationX = data(perm(tSize+1:end),:);
    validationY = time(perm(tSize+1:end),2);
    
    colsToKeepTrain = preprocessData(trainingX, trainingY);
    colsToKeepVal = preprocessData(validationX, validationY);
    colsToKeep = intersect(colsToKeepTrain, colsToKeepVal);
    
    trainingX = trainingX(:, colsToKeep);
    validationX = validationX(:, colsToKeep); 
end