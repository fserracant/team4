function [ paths_of_computed_masks ] = predict_max(features, paths)
  % PREDICT MAX: Given an average colour histograms predict a segmentation and save 
  %  it as a mask in a PNG format. Uses features which contains the peaks of 
  %  each 3-channel colour histogram.
  
  global number_of_classes
  show_masks = false;
  output_folder = fullfile(fileparts(fileparts(paths(1,:))), 'validation', 'mask');
  
  for i=1:size(paths)
    image_path = paths(i,:);
    tmp = strsplit(image_path, '/');
    image_filename = tmp{end};
    tmp = strsplit(image_filename, '.');
    image_name = strcat(tmp{1},'.',tmp{2});
    image = imread(image_path);
    maska = compute_mask_using_max (image, features, 25);
    
    if show_masks
      imshow(maska, [0, 1])
      pause(3)
    end
    output_file = fullfile(output_folder, strcat('mask.', image_name, '.png'));
    fprintf('Saving mask %s to file %s\n', image_name, output_file);
    imwrite(maska, output_file, 'PNG');
    paths_of_computed_masks(i, :) = strcat(output_file);
  end
end
