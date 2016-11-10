function ynew = RK4step(f, yold, told, h)

Yp1 = f(told, yold);
Yp2 = f(told + h/2, yold + h * Yp1 /2);
Yp3 = f(told + h/2, yold + h * Yp2 /2);
Yp4 = f(told + h/2, yold + h * Yp3);

ynew = yold + h*(Yp1 + 2 * Yp2 + 2 * Yp3 + Yp4)/6;
end