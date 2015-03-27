function [valErr, trainingErr, nb] = makeAndClassify(data, time, ratio)

[tX,tY, vX,vY] = genTrainingAndValidationSet(data, time, ratio);

[valErr, trainingErr, nb] = classifyTraining(tX, tY, vX, vY);

end