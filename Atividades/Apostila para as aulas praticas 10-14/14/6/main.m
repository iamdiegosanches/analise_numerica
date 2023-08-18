clear
clc

f1 = @(x,y)((x.^2)+y);
a = 0;
b = 2;
y0 = 1;
[VetX, VetY] = rk4 (a, b, y0, 0.2, f1)
[VetX, VetY] = rk4 (a, b, y0, 0.4, f1)
[VetX, VetY] = rk4 (a, b, y0, 0.5, f1)

f2 = @(x,y)(y.*(x-y));
a = 0;
b = 1.5;
y0 = 1
[VetX, VetY] = rk4 (a, b, y0, 0.15, f2)
[VetX, VetY] = rk4 (a, b, y0, 0.3, f2)
[VetX, VetY] = rk4 (a, b, y0, 0.5, f2)

f3 = @(x,y)(-2*x.*y);
a = 0;
b = 0.5;
y0 = 1;
[VetX, VetY] = rk4 (a, b, y0, 0.1, f3)
[VetX, VetY] = rk4 (a, b, y0, 0.05, f3)

