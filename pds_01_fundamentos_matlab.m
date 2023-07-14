%%

A = 2;
B = [2, 4, 8];

%% 

C = ones(1, 5);
D = ones(1, 5);

E = C + D
F = C - D


%%

G = C .* D

%%

t = linspace(0, 10, 1000);

f = sin(t);

plot(t, f)

title("Señal seno")

%%

ts = 0:0.5:10;
fs = sin(ts);
stem(ts, fs)
title("Señal seno muestreada")

%%
hold on

plot(t, f)
stem(ts, fs)

title("Señal seno en tiempo continuo y señal muestrada")
