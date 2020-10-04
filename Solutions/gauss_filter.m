function mat = gauss_filter(N, sigma)
    ind = -floor(N/2) : floor(N/2);
    [X, Y] = meshgrid(ind, ind);
    
    mat = exp(-(X.^2 + Y.^2) / (2*sigma*sigma));
    mat = mat / sum(mat(:));
end