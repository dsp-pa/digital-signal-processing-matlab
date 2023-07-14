% Cálculo de los coeficientes de Fourier de una señal.

clear;
clc;
T = 10;
t = linspace(0, T, 100);
x = t.*(t >= 4 & t <= 6);
% x2 = t.^2 .* (t >=1 & t <= 3);
% x =  x + x2;

figure
plot(t, x)

N = 50;

s = zeros(N, length(t));

for in=1:N
    % Cálculo de los N coeficientes
    a(in) = 2/T.*trapz(t, x .* cos(2.*pi/T .* in .* t));
    b(in) = 2/T.*trapz(t, x .* sin(2.*pi/T .* in .* t));
    
    % Obtener las componentes para in = 1, 2, ...
    cos_n = a(in) .* cos(2.*pi/T.*in.*t);
    sin_n = b(in) .* sin(2.*pi/T.*in.*t);

    % x_r es la componente para in = 1, 2, 3, ...
    x_r = cos_n + sin_n;
    
    % Añado la componente a un vector de N columnas. Si in = 1,
    % añado x_r a la columna in = 1.
    s(in, :) = x_r;
end

% r es la señal resultante
r = zeros(1, length(t));

for l=1:N
    % La señal resultante es el resultado de sumar las N componentes 
    r = r + s(l, :);
end

figure
plot(t, r)
