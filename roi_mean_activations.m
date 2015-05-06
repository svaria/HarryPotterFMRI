num_samples = size(data, 1);
num_rois = size(meta.ROInumToName, 2);

roi_mean_activations1 = zeros(num_samples, num_rois);

for row=1:num_samples,

	sample = data(row, :);

for ROInum=1:num_rois,

	[~, cols] = find(meta.colToROInum == ROInum);
	
	roi_mean_activations1(row, ROInum) = mean(sample(cols));
end

end