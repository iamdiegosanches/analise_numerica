clear
clc

f = @(x,y) (1.0*cos(y^5.0)*+8.0*sin(y^3.0)+10.0*y^10.0+5.0*x^2.0);

ax = -1.95;
bx = -4.24;

ay = -2.52;
by = -3.90;

nx = ny = 6;

[Integral, Info] = gauss_legendre_dupla (ax, bx, nx, ay, by, ny, f)
