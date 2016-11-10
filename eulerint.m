function [approx,err] = eulerint(A, y0, t0, tf, N)
h = (tf-t0)./N;
tnow = t0;
approx(1) = y0;
err(1) = 0;
counter = 2;
exactY(1) = y0;

while counter <= N +1
    tnow = tnow + h;
    if tnow > tf
        tnow = tf;
        %counter = N;
    end
    exactY(counter) = expm(A*tnow);
    approx(counter) = eulerstep(A, approx(counter-1), h);
    err(counter) = abs(exactY(counter)-approx(counter));
    counter = counter +1;
end
return;