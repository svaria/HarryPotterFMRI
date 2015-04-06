sb = load('subject_1.mat');

avgverrs = zeros(10);
avgterrs = zeros(10);
for numVoxels = 1:10,
    totalverr = 0;
    totalterr = 0;
    for iter = 1:10,
        [verr,terr,~] = featureSubsetClassify(sb.data,sb.time,...
            0.75,numVoxels);
        totalverr = totalverr+verr;
        totalterr = totalterr+terr;
    end
    avgverrs(numVoxels) = totalverr/10;
    avgterrs(numVoxels) = totalterr/10;
end

figure
plot(1:10, avgverrs);
title('Average Validation Error against number of voxels');
xlabel('Number of Voxels');
ylabel('Average Validation Error');

figure
plot(1:10, avgterrs);
title('Average Training Error against number of voxels');
xlabel('Number of Voxels');
ylabel('Average Trainingg Error');
