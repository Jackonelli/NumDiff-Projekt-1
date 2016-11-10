close all
clear all
clc

tol = 10^(-6);
u0 = [1;1];
t0 = 0;
tf= 10;
[t, y] = adaptiveRK34(@lotka, u0, t0, tf, tol);

figure(1)
plot(t, y(1), 'r')
hold on;
plot(t, y(2), 'b')

figure(2)
plot(y(1), y(2), 'g')