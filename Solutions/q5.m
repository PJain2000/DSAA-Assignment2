 % img1 = rgb2gray(double(imread('autumn.tif')));
img1 = magic(1024);

% 2-D DFT
% % In-built function
img1_dft = fft2(img1);

tic
% % Using q5_dft
m3 = q5_dft(size(img1, 1));
m4 = q5_dft(size(img1, 2));
img1_dftq = m3*img1*m4;
toc


% 2-D FFT
% % In-built function
img1_fft = fft2(img1);

tic
% % Using q5_fft
m = q5_fft(img1);
m = q5_fft(m.');
img_fftq = m.';
toc
