N = 4;
sigma = 4;

filter = gauss_filter(N, sigma)

a = fspecial('gaussian', N, sigma)