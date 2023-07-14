% Respuesta de sistemas lineales


% Exponencial decreciente
a = 0.9;
num = [1];
den = [1 -a];

figure
[h, t] = impz(num, den, 200, 8);
stem(t, h)


s = cos(t);

y = filter(num, den, s);
stem(t, y)

z = conv(h, s);
stem(z)


[H, W] = freqz(num, den)

figure
plot(W, abs(H))



% Senos y cosenos
num = [1]
den = [-1 1 2]
[H, W] = freqz(num, den)

figure
plot(W, abs(H))

figure
zplane(num, den)

figure
impz(num, den)













