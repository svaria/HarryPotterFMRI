verrs = [];
for ratio = 0.01:0.01:0.1,
   [verr,terr,~] = makeAndClassify('subject_1.mat',ratio);
   verrs = [verrs, verr];
end

figure
plot(ratio,verrs);