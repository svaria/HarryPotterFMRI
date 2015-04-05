verrs = [];
for ratio = 0.1:0.1:1,
   [verr,terr,~] = makeAndClassify('subject_1.mat',ratio);
   verrs = [verrs, verr];
end

figure
plot(ratio,verrs);