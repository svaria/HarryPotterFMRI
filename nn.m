feat = [zeros(228,195); features(1).values, features(2).values, features(3).values, features(4).values, features(5).values, features(6).values,features(7).values,features(8).values, features(9).values,features(10).values]';
s1dat = zeros(5404,37913);
for i=0:1350,
    s1dat(4*i+1,:) = data(i+1,:);
    s1dat(4*i+2,:) = data(i+1,:);
    s1dat(4*i+3,:) = data(i+1,:);
    s1dat(4*i+4,:) = data(i+1,:);
end
s1dat = s1dat';