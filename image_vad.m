% 读入第一个影像
im = imread('D:\doctor\paper3\data\image\bf_nir.tif');
im = im(:,:,1);
im = double(im);
im1 = im*0.0001-0.1;
a = im1(:);


% 读入第二个影像
im2 = imread('D:\doctor\paper3\data\image\bf_sim_nir.tif');
im2 = im2(:,:,1);
b2 = double(im2);
b2 = b2(:);

% 误差计算

c = abs((a - b2) ./ a) * 100;

error = c;
delta = mean(error(:));

% a1 = anew(d);
% b3 = bnew(d);

% 相关性和 RMSE
r2 = corr(a, b2);

rmse = sqrt(mean((a - b2).^2));



