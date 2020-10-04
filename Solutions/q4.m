[sig, fs] = audioread('signal_6.wav');
% sound(sig, fs)

% X = fft(sig);
% stem(abs(X))

b = fir1(64, 0.08, 'low');
y = filter(b,1,sig);
sound(y, fs)
%  plot(y)
 
 y = smoothdata(sig, 'lowess', 22);
 sound(y, fs)
