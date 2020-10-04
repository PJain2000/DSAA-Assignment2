img = imread('inp1.png');
subplot(1,2,1);
imshow(img)

x = fft2(img);
x1 = fft2(x);
subplot(1,2,2);
imshow(x1, [])