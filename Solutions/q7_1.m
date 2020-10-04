y = audioread('chirp.wav');

W = 256;
s = 256;

% Using inbuilt spectrogram
figure;
subplot(2,1,1);
spectrogram(y,W,100);

% Using q7_spectrogram 
subplot(2,1,2);
fin_img = q7_spectogram(y,W,s);