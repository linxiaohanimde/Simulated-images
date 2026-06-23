% read the sentinel-2 observations
im = imread('D:\doctor\paper3\data\image\bf_nir.tif');
im = im(:,:,1);
im = double(im);
im1 = im*0.0001-0.1;
a = im1(:);


% read the simulated images
im2 = imread('D:\doctor\paper3\data\image\bf_sim_nir.tif');
im2 = im2(:,:,1);
b2 = double(im2);
b2 = b2(:);

% calculte the delta value

c = abs((a - b2) ./ a) * 100;

error = c;
delta = mean(error(:));

% calculate the R2 and RMSE
r2 = corr(a, b2);

rmse = sqrt(mean((a - b2).^2));



