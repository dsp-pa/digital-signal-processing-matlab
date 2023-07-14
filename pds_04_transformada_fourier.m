clc
close all
clear

% 1. Parámetros de muestreo:

fs = 32;
ts = 1/fs;

% 2. Periodo de la señal (no tiene influencia sobre el espectro)
T = 10;

% 3. Generación del vector tiempo y la señal s(t)

t = 0:ts:T;
s = cos(2.*pi.*t) + cos(4*pi*t);

figure
plot(t, s)
title("Señal s(t)")

% 4. Generar la transformada de Fourier 

N = length (s);
S = fft(s) / N;

% 5. Gráfica del espectro si ncorregir

figure
df = 1 / T;
f = (0:N-1)*df;
plot(f, abs(S))
title("Espectro S(f)")

% 6. Gráfica del espectro corregido

S = fftshift(S);

figure
f = (-N/2:N/2-1)*df;
plot(f, abs(S))
title("Espectro S(f) - corregido")

%% Audio de alta frecuencia

clc
close all
clear

% 1. Parámetros de muestreo:

fs = 44000;
ts = 1/fs;

% 2. Periodo de la señal (no tiene influencia sobre el espectro)
T = 6;

% 3. Generación del vector tiempo y la señal s(t)

t = 0:ts:T;
s = cos(16e3.*2 .*pi.*t);

figure
plot(t, s)
title("Señal s(t)")

% 4. Generar la transformada de Fourier 

N = length (s);
S = fft(s) / N;

% 5. Gráfica del espectro si ncorregir

figure
df = 1 / T;
f = (0:N-1)*df;
plot(f, abs(S))
title("Espectro S(f)")

% 6. Gráfica del espectro corregido

S = fftshift(S);

figure
f = (-N/2:N/2-1)*df;
plot(f, abs(S))
title("Espectro S(f) - corregido")
% Reproducir audio
sound(s, fs)



%% Carga de archivos de audio

clc
close all
clear

% 1. Parámetros de muestreo:

[s_stereo, Fs] = audioread("crackle old tape noise.mp3");

s = s_stereo(:,1);

figure
plot(s)
title("Señal s(t)")


N = length (s);
S = fft(s) / N;
S = fftshift(S);

figure

f = linspace(-Fs/2, Fs/2, N);

plot(f, 20*log10(abs(S)));
title("Espectro S(f) - corregido")
% Reproducir audio
sound(s, Fs)
