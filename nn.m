feat = [features(1).values, features(2).values, features(3).values, features(4).values, features(5).values, features(6).values,features(7).values,features(8).values, features(9).values,features(10).values]';

s1dat1 = zeros(1302,90);
s1dat2 = zeros(length(1304:2653),90);
s1dat3 = zeros(length(2655:3712),90);
s1dat4 = zeros(length(3714:5175),90);
for i=1:1302,
    time = (i+40)/2;
    roi = floor(time/2);
    s1dat1(i,:) = roi_mean_activations1(roi,:);
end
s1dat1 = s1dat1';

for i=1304:2653,
    time = (i+96)/2;
    roi = floor(time/2);
    s1dat2(i-1303,:) = roi_mean_activations1(roi,:);
end
s1dat2 = s1dat2';

for i=2655:3712,
    time = (i+153)/2;
    roi = floor(time/2);
    s1dat3(i-2654,:) = roi_mean_activations1(roi,:);
end
s1dat3 = s1dat3';

for i=3714:5175,
    time = (i+210)/2;
    roi = floor(time/2);
    s1dat4(i-3713,:) = roi_mean_activations1(roi,:);
end
s1dat4 = s1dat4';

feat1 = feat_normalized(1:1302,:)';
feat2 = feat_normalized(1304:2653,:)';
feat3 = feat_normalized(2655:3712,:)';
feat4 = feat_normalized(3714:5175,:)';
