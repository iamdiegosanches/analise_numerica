clear
clc

f = @(x,y)(9.0*cos(y^7.0)*7.0*sin(x^3.0) + 3.0*e.^(y^4.0) + 1.0*y^2.0);
y0 = -0.30;
a = -1.97;
b = -1.96;
m = 100;

[VetX, VetY, Erro] = abm4 (a, b, y0, m, f);

VetX = VetX'
VetY = VetY'