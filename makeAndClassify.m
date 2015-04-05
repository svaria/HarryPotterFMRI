function [valErr, trainingErr, nb] = makeAndClassify(filename, ratio)
subject = load(filename);
[tX,tY, vX,vY] = genTrainingAndValidationSet(subject.data, subject.time, ratio);

[valErr, trainingErr, nb] = classifyTraining(tX, tY, vX, vY);

end