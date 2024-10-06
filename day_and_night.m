clc;
close all; clear;

selectedFolder=uigetdir();
imagesList= dir(fullfile(selectedFolder,"*.JPG"));
threshold= 10;

for i=1:length(imagesList)
   File=imagesList(i).name;
   img= imread(fullfile(selectedFolder,File));
   colorfulnessValue=colorfulness(img);
   
        if colorfulnessValue<threshold
            figure; imshow(img); title('night')
        else
            figure; imshow(img); title('day')
        end
   pause
end

function  colorfulnessValue=colorfulness(img)
   img_hsv = rgb2hsv(img);
   sValue = sum(img_hsv(:, :, 2));
  colorfulnessValue =mean(sValue);
end

