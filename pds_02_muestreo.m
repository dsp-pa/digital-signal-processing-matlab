%% 

% 1. Dibujar la señal continua (2 periodos)

close all

F = (9.6 * pi) / (2 * pi)
T = 1 / F

t = linspace(0, 2*T, 100);
f = 10 .* cos(9.6 .* pi .* t);

Fs =  F;
Ts = 1 / Fs;
ts = 0:Ts:2*T;
fs = 10 .* cos(9.6 .* pi .* ts);

fig1 = figure;
hold on
plot(t, f)
stem(ts, fs)
title("Señal f(t)= 10 cos(9.6 \pi \theta \omega t)")

grid on
hold off

exportgraphics(fig1, "archivo2.png")

figure
stem(ts, fs)


%%

% f(t) = 10 cos(10πt) + 3 cos(8πt)

F1 = 5;
F2 = 4;

T1 = 1 / F1
T2 = 1 / F2

Fs = 2 * F1;
Ts = 1 / Fs;


t = linspace(0, 2*T2, 1000);
f = 10 .* cos(10 .* pi .* t) + 3 .* cos(8 .* pi .*t);


ts = 0:Ts:2*T2;
fs = 10 .* cos(10 .* pi .* ts) + 3 .* cos(8 .* pi .*ts);

fig1 = figure;

hold on
plot(t, f)
stem(ts, fs)

hold off

%% 

t = linspace(0, 2, 1000);
f = 10 * cos(12 .* pi .* t);

figure("PaperUnits","points", "PaperSize", [6 8])
plot(t, f)

title("Señal f(t) = cos(12\pi t) con una frecuencia de 12 Hz ")
fig = gcf();

exportgraphics(fig,"file.png", 'Resolution',300 )

%%

Fs = 6 * 2;
Ts = 1 / Fs;

ts = 0:Ts*0.25:2;
fs = 10 * cos(12 .* pi .* ts);

figure()
stem(ts, fs)
title("Señal coseno")

fig = gcf();
exportgraphics(fig, "file2.png", 'Resolution',300 )


%%

close all
figure()

hold on


rn = 10 * rand([1 length(ts)]);
stairs(rn)

rn_q = floor(rn);
stairs(rn_q);

hold off

diferencia = abs(rn - rn_q) ./ rn;

figure()
stairs(diferencia)


mean(diferencia) .* 100