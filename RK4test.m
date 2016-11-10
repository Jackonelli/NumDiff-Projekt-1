function err = RK4test(lambda, y0, t0, tf, N)
f = @(t, y) lambda * y;
g = @(t) y0 * exp(lambda * t-t0);
h = (tf- t0)./N;
yold = y0;
for n = 1:N
    ynew = RK4step(f, yold, t0+h*n, h);
    yold = ynew;
end
err = ynew - g(tf);
end