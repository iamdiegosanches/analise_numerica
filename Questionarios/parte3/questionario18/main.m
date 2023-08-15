clear
clc

f = @(x,y) (1.0*y^6.0*4.0*y^4.0 + 2.0*y^2.0 + 7.0*y^4.0);
y0 = 0.65;
a = -0.28;
b = -0.18;
m = 5;

[VetX, VetY, DifY] = dp54 (a, b, y0, m, f);
VetX = VetX'
VetY = VetY'