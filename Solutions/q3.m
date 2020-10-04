[s0, f0] = audioread( '0.ogg' );
[s1, f1] = audioread( '1.ogg' );
[s2, f2] = audioread( '2.ogg' );
[s3, f3] = audioread( '3.ogg' );
[s4, f4] = audioread( '4.ogg' );
[s5, f5] = audioread( '5.ogg' );
[s6, f6] = audioread( '6.ogg' );
[s7, f7] = audioread( '7.ogg' );
[s8, f8] = audioread( '8.ogg' );
[s9, f9] = audioread( '9.ogg' );

x0 = fft(s0);
[y0, I0] = sort(abs(x0), 'descend');
z0 = [I0(1) - 1, I0(3) - 1];

x1 = fft(s1);
[y1, I1] = sort(abs(x1), 'descend');
z1 = [I1(1) - 1, I1(3) - 1];

x2 = fft(s2);
[y2, I2] = sort(abs(x2), 'descend');
z2 = [I2(1) - 1, I2(3) - 1];

x3 = fft(s3);
[y3, I3] = sort(abs(x3), 'descend');
z3 = [I3(1) - 1, I3(3) - 1];

x4 = fft(s4);
[y4, I4] = sort(abs(x4), 'descend');
z4 = [I4(1) - 1, I4(3) - 1];

x5 = fft(s5);
[y5, I5] = sort(abs(x5), 'descend');
z5 = [I5(1) - 1, I5(3) - 1];

x6 = fft(s6);
[y6, I6] = sort(abs(x6), 'descend');
z6 = [I6(1) - 1, I6(3) - 1];

x7 = fft(s7);
[y7, I7] = sort(abs(x7), 'descend');
z7 = [I7(1) - 1, I7(3) - 1];

x8 = fft(s8);
[y8, I8] = sort(abs(x8), 'descend');
z8 = [I8(1) - 1, I8(3) - 1];

x9 = fft(s9);
[y9, I9] = sort(abs(x9), 'descend');
z9 = [I9(1) - 1, I9(3) - 1];

z = [z0; z1; z2; z3; z4; z5; z6; z7; z8; z9];

[sig, f] = audioread('tone.wav');
s = spectrogram(sig, size(sig,1)/8, 0, [], f);

[~, I1] = sort(abs(s(:,1)), 'descend');
I1 = I1/size(s,1)*2000;
W1 = [I1(1), I1(2)];

[~, I2] = sort(abs(s(:,2)), 'descend');
I2 = I2/size(s,1)*2000;
W2 = [I2(1), I2(2)];

[~, I3] = sort(abs(s(:,3)), 'descend');
I3 = I3/size(s,1)*2000;
W3 = [I3(1), I3(2)];

[~, I4] = sort(abs(s(:,4)), 'descend');
I4 = I4/size(s,1)*2000;
W4 = [I4(1), I4(2)];

[~, I5] = sort(abs(s(:,5)), 'descend');
I5 = I5/size(s,1)*2000;
W5 = [I5(1), I5(2)];

[~, I6] = sort(abs(s(:,6)), 'descend');
I6 = I6/size(s,1)*2000;
W6 = [I6(1), I6(2)];

[~, I7] = sort(abs(s(:,7)), 'descend');
I7 = I7/size(s,1)*2000;
W7 = [I7(1), I7(2)];

[~, I8] = sort(abs(s(:,8)), 'descend');
I8 = I8/size(s,1)*2000;
W8 = [I8(1), I8(2)];

W = [W1; W2; W3; W4; W5; W6; W7; W8];
W = round(W);


find(abs(mean(W.' - z(1, :).')) < 2)
find(abs(mean(W.' - z(2, :).')) < 2)
find(abs(mean(W.' - z(3, :).')) < 2)
find(abs(mean(W.' - z(4, :).')) < 2)
find(abs(mean(W.' - z(5, :).')) < 2)
find(abs(mean(W.' - z(6, :).')) < 2)
find(abs(mean(W.' - z(7, :).')) < 2)
find(abs(mean(W.' - z(8, :).')) < 2)
find(abs(mean(W.' - z(9, :).')) < 2)
find(abs(mean(W.' - z(10, :).')) < 2)


