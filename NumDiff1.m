% NumDiff 1
clc;
clf;

%% Plotting commands
% xlabel, ylabel, title,  
%h = legend('Thorium sample', 'Background noise');
%set(h, 'Interpreter', 'Tex', 'Fontsize', 15);
%print -depsc name


%% Tasks
% Task 1.1
% Lösningen till y' = Ay är y(t) = y0exp(At)
% test 1.2
 t0 = 0;
 tf = 1;
 y0 = 1;
 A = -2;
 N = 20;
 x = linspace(t0, tf, N+1);
 sol = exp(-2*x);
 [approx, err] = eulerint(A, y0, t0, tf, N);
 figure(1)
 plot(x, sol, 'b');
 hold on;
 plot(x, approx, 'r');
 
 % 1.3
 
 figure(2)
 hold on;
 errVSh(A, y0, t0, tf)
 
