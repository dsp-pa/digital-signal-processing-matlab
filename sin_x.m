
echo off; clear; clc
% x = [-pi:0.1:pi];
% y = 4*sin(x);

% figure
% plot(x, y)

% figure
% stem(x, y)

% figure
% y = round(y)
% stem(x, y)



figure

hold on
Fs = 40
T = 1/Fs

t = [ -pi/2 : 0.001 : pi/2 ];
y = cos(2*pi*10*t);

plot(t, y, 'r')
t1 = [ -pi/2 : T : pi/2 ];
x1 = cos(2*pi*10*t1);

stem(t1, x1, 'g')


t2 = t1;

x2 = cos(2 * pi * 50 * t2);
hold on 
stem(t2, x2, 'b')
axis([-0.25 0.25 -1 1])