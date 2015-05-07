dats = cell(4,1);
dats{1}= s1dat1;
dats{2} = s1dat2;
dats{3} = s1dat3;
dats{4} = s1dat4;
fs = cell(4,1);
fs{1} = feat1;
fs{2} = feat2;
fs{3} = feat3;
fs{4} = feat4;
genErr = 0;
sliceSize = 30;

for i = 1:100,
    a = randperm(4,2);
    starts = cell(2,2);
    starts{1,1} = randperm(size(dats{a(1)},2)-sliceSize,1);
    starts{1,2} = a(1);
    starts{2} = randperm(size(dats{a(2)},2)-sliceSize,1);
    starts{2,2} = a(2);
    inp_passage = (rand > 0.5)+1;
    story = starts{inp_passage,2};
    sIndex = starts{inp_passage,1};

    X = tonndata(fs{story}(:,sIndex:sIndex+sliceSize-1),true,false);
    T = tonndata(dats{story}(:,sIndex:sIndex+sliceSize-1),true,false);
    [x,xi,ai,t] = preparets(net,X,T);
    predicted_out = net(x,xi,ai);

    err1 = 0;
    err2 = 0;
    slice1 = dats{starts{1,2}}(:,starts{1,1}:starts{1,1}+sliceSize-1);
    slice2 = dats{starts{2,2}}(:,starts{2,1}:starts{2,1}+sliceSize-1);
    for j=1:19,
        err1 = err1+ sum((slice1(:,j+1) - predicted_out{j}).^2);
        err2 = err2+ sum((slice2(:,j+1) - predicted_out{j}).^2);
    end
    
    if(err1 < err2) %predict 1
        genErr = genErr + (starts{1,2} ~= story);
    else
        genErr = genErr + (starts{2,2} ~= story);
    end
end
    