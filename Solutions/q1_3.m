filter = gauss_filter(5,4);

img = imread('cameraman.tif');
b = imfilter(img, filter);
subplot(1,2,1)
imshow(b)

img = median_filter('cameraman.tif', 3);
subplot(1,2,2)
imshow(img)