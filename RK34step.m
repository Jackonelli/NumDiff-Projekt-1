function [ynew, err] = RK34step(f, yold, told, h)
ynew = RK4step(f, yold, told, h);

Yp1 = f(told, yold);
Yp2 = f(told + h/2, yold + h * Yp1 /2);
Zp3 = f(told + h, yold - Yp1 + 2*Yp2);

znew = yold + ((h/6) * (Yp1 + 4 * Yp2 + Zp3));

err = norm(ynew - znew);

end