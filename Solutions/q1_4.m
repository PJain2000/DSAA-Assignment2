I = imread('inp1.png');

Iaverage = filter2(fspecial('average',3),I)/255;
imshow(Iaverage)

Imedian = medfilt2(I);
imshow(Imedian)

Igauss = imgaussfilt(I, 2);
imshow(Igauss)

Iblt = imbilatfilt(I);
imshow(Iblt)
