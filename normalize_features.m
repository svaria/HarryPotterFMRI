function [normed] = normalized_features( features )

means = mean(features, 2);
features = features - means * ones(1, 5176);
devs = std(feat_centered, 2);
normed = features - devs * ones(1, 5176);

end
