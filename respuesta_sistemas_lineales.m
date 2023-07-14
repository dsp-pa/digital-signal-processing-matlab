% Respuesta de sistemas lineales

h = [0.33 0.33 0.33];
x = [1 2 3];

subplot(1,3,1)
stem(h)
axis([-3 5 0 2])
xlabel("Respuesta del filtro")
subplot(1,3,2)
stem(x)
axis([-3 5 0 5])
xlabel("Señal de entrada")

y = conv(h, x);
subplot(1,3,3)
stem(y)
axis([-3 6 0 5])
xlabel("Señal de salida")



% New figure
figure
num = [1.1];
den = [1 0 -0.1];

r = impz(num, den);
stem(r)






% Exponencial decreciente
a = 0.9;
num = [1];
den = [1 -a];

figure
[h, t] = impz(num, den, 60, 8);
stem(t, h)




% Exponencial decreciente
a = 0.9;
num = [1];
den = [1 -a];

figure
[h, t] = impz(num, den, 25, 10);
stem(t, h)



% Con información de frecuencia
figure
num = [1.1];
den = [1 0 -0.1];

[h, t] = impz(num, den, 20, 1000);
stem(t, h)





w0 = 2*8*pi;

num = [1 -cos(w0)];
den = [1 -2.*cos(w0) 1];

figure
[h, t] = impz(num, den, 600, 8);
stem(t, h)



