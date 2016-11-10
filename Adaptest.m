clear all
close all

f = @(t, y) -2 *(y-sin(t))+cos(t);
%f = @(t,y) 2*sin(t);

t0 = 0;
tf=2*pi;
%Gör tol skiten långsam på 0,001?
tol= 0.00001;
y0= 1/2;
[t, y] = adaptiveRK34(f, y0, t0, tf, tol);
plot (t, y, 'r');
x = linspace(t0,tf,1000);
hold on;
%plot(x, -2*cos(x) + y0 + 2, '--b')
plot(x, sin(x) + y0*exp(-2*x), '--b')
%något blir fel