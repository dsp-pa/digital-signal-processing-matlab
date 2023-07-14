A = imread('waves.jpeg');


c = A(:,:,2);
imshow(c)


figure

C = fft2(c);
C = fftshift(C);
% mesh(20*log(abs(C)));


[a, b] = butter(50, 0.1);
h = ftrans2(a, b);
mesh(h);