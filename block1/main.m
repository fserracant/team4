addpath(genpath('.'))
if (is_octave())
  disp('Octave detected. Loading packages..')
  pkg load image # octave-command
end  

%% Task 1: Determine the characteristics of the signals in the training set: 
%   max and min size, form factor, filling ratio of each type of signal, 
%   frequency of appearance (using text annotations and ground-truth masks). 
%   Group the signals according to their shape and color.
% [ traffic_sign_type, vector_of_features] = extract_features(dataset_path)

% Task 2: Create balanced train/validation split using provided dataset.
% [ paths_for_training, paths_for_validation ] = split(dataset_path, 
%                                                      traffic_sign_type, 
%                                                      vector_of_features, 
%                                                      validation_percentage)

% Task 3: Color segmentation to generate a mask
% [ values ] = train(paths_for_training)
% [ paths_of_computed_masks ] = predict(paths_for_validation, values)

% Task 4: Evaluate the segmentation using ground truth
% [ precision, accuracy, recall, f1_mesure, 
%   tp, fp, fn, time_per_frame ] = evaluate(paths_for_validation, computed_maks) 

% Task 5: Study the influence of luminance normalization (Optional)
% ...