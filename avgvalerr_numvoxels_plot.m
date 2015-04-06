sb = load('subject_1.mat');

avgverrs = zeros(10);
for numVoxels = 1:10,
    totalverr = 0;
    for iter = 1:10,
        [verr,terr,~] = featureSubsetClassify(sb.data,sb.time,...
            0.75,numVoxels);
        totalverr = totalverr+verr;
    end
    avgverrs(numVoxels) = totalverr/10;
end

figure
plot(1:10, avgverrs);
title('Average Validation Error against number of voxels');
xlabel('Number of Voxels');
ylabel('Average Validation Error');
