function colsToKeep = preprocessData(data,labels)
% Preprocesses fMRI data.


% Returns cols with in class variance > 0 such that nb calc works
% there are originally 4 classes

classes = cell(1,4);

classes{1} = data(find(labels==1),:);
classes{2} = data(find(labels==2),:);
classes{3} = data(find(labels==3),:);
classes{4} = data(find(labels==4),:);

colsToRemove = [];

for c = 1:4
    colsToRemove = union(colsToRemove, find(var(classes{c}) == 0));
end

colsToKeep = setdiff(1:size(data,2), colsToRemove);

% Choose 

end