 
t = linspace(0,50,1000);
s_t = cos(2.*pi.*t);
S_f = fft(s_t);
figure
plot(s_t)
figure

T = t(end);
df = 1/T;
N = length(t);
f = [0:(N-1)]*df;
plot(f, abs(S_f))

S = fftshift(S_f);

T = t(end);
df = 1/T;
N = length(t);
f = [-N/2:(N-1)/2]*df;
figure
plot(f, abs(S))
