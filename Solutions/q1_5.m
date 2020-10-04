img = imread('inp2.png');

X = fft2(img);
X = fftshift(X);

% figure, imagesc(log(abs(X)));

X(95:106, 116:124) = 0;
X(212:224, 116:124) = 0;
X(41:45, 116:124) = 0;
X(273:277, 116:124) = 0;
X(14:18, 116:124) = 0;
X(301:305, 116:124) = 0;

% figure, imagesc(log(abs(X)))

X = ifftshift(X);
i = ifft2(X);
y = abs(i)/255;
imshow(y)
