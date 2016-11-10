function [t, y] = adaptiveRK34(f, y0, t0, tf, tol)
h0 = (abs(tf-t0).*tol.^(1/4)) ./ (100*(1+norm(f(t0, y0))));
h = h0;
i = 1;
t(i) = t0;
y(i) = y0;
errold = tol;
while t+h < tf;
[ynew, err] = RK34step(f, y(i), t(i), h);
y(i+1) = ynew;
t(i+1)=t(i)+h;
h=newstep(tol, err, errold, h, 4);
i=i+1;
end 
%Vad händer om h blir jättelitet?
h = abs(tf - t(i));
y(i+1)= RK34step(f, y(i), t(i), h);
t(i+1)=tf;
end