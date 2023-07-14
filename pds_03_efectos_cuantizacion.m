clc
close all
clear

t = 0:0.05:1;

f = 10 * rand([1 length(t)]);

fig = figure;

hold on
plot(t, f)
stem(t, f)
title("Señal muestreada")


%% Cuantización usando el truncamiento

f_q1 = floor(f);

figure

hold on
plot(t, f)
stem(t, f_q1)


legend("Señal original", "Señal cuantizada")
title("Diferencia entre la señal original y la señal cuantizada por truncamiento")

err = sum(abs(f - f_q1)) / (10 * length(t)) * 100


%% Cuantización usando el redondeo
% 

f_q2 = round(f);

figure

hold on
plot(t, f)
stem(t, f_q2)


legend("Señal original", "Señal cuantizada")
title("Diferencia entre la señal original y la señal cuantizada por redondeo")


err = sum(abs(f - f_q2)) / (10 * length(t)) * 100


%% Cuantización usando el redondeo (pero con un decimal de precisión)
% 

f_q3 = round(f, 1);

figure

hold on
plot(t, f)
stem(t, f_q3)


legend("Señal original", "Señal cuantizada")
title("Diferencia entre la señal original y la señal cuantizada por redondeo")
subtitle("(con dos decimales)")

err = sum(abs(f - f_q3)) / (10 * length(t)) * 100
