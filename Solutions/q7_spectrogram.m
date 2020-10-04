function res = q7_spectrogram(sig,window,stride)
    itr = int16((size(sig,1) - window)/stride) + 1;
    final_img = zeros(itr, window + 1);
    res = zeros(itr,int16(size(final_img,2)/2));

    for i = [1:itr-2]
        f_y = fft(sig(i*stride:window + i*stride));
        f_y = fftshift(f_y);
        final_img(i, 1:size(f_y)) = abs(f_y);
    end

    final_img = log(final_img + 1);
    final_img = mat2gray(final_img);
    res = final_img(1:min(size(res,1), int16(window/2)), int16(end/2) + 1:end);
    imshow(res);
    axis on;
end