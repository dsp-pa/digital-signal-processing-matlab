t = linspace(0,50,2048);
s = cos(2.*pi.*t) + 1.5*sin(2*5*pi*t);
T = t(end);
N = length(s);
x = fft(s)/N;


figure
plot(t, s)
figure
plot(abs(x))

x = fftshift(x);
dt = T/N;
df = 1/dt;


f = (-N/2:N/2-1)*df/N;
plot(f, abs(x))
