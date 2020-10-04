 function mat = q5_dft(N)
    x = 0:N-1;
    y = 0:N-1;
    k = x'*y;
    mat = exp(-(2*1j*pi*k)/N);
end
