function [valErr, trainingErr, nb] = ...
    classifyTraining(trainingX,trainingY,validationX,validationY)
    
    % makes the naive bayes model based on trainingX and trainingY
    % and computes validation Error and training Error
    nb = fitNaiveBayes(trainingX,trainingY,'Distribution','kernel');
    predictTY = predict(nb, trainingX);
    predictVY = predict(nb, validationX);
    trainingErr = sum(predictTY ~= trainingY)/length(trainingY);
    valErr = sum(predictVY ~= validationY)/length(validationY);
    
    
end