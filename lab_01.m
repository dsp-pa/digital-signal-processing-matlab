%% Asignacion de var.
A = 3;
B = [0, 1, 2, 3];

%% Operaciones

C = A * B;







%%

A = [1, 2, 3];
B = [4, 5, 6];

C = A + B;

%%
B = [0, 1, 2, 3]
A = cos(B)

%%

B = [5, 1, 2, 3]
plot(B)

%%

t = [0, 0.1, 0.2, 0.3];
B = [5, 1, 2, 3, 6];

plot(t, B)

%%

t = linspace(0, 5, 1000);
f = cos(2 .* pi .* t);

% plot(t, f)


Ts = 0.5;

ts = 0:Ts:5;
fs = cos(2 .* pi .* ts);

% stem(ts, fs)
title("Señal seno muestreada")



hold on
plot(t, f)
stem(ts, fs)
