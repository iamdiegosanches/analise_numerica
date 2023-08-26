clear
clc

f = @(x,y)(2*x^3 - 2*x*y - exp(x));
y0 = 1;
a = 0;
b = 0.3;
m = 2;

[VetX, VetY] = Euler (a, b, y0, m, f)
