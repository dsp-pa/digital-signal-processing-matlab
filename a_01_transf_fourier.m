fs = 32;
ts = 1/fs;
N = 256;
t = 0:ts:(N-1)*ts;
s = cos(2.*pi.*t) + cos(4*pi*t);
T = t(end);
N = length(s);
x = fft(s)/N;


figure
plot(t, s)
title("Señal s(t)")
figure
df = 1 / T;
f = (0:N-1)*df;
plot(f, abs(x))
title("Espectro S(f)")


x = fftshift(x);
df = 1/T;

figure;
f = (-N/2:N/2-1)*df;
plot(f, abs(x))
title("Espectro S(f) - corregido")
