clear
clc

f = @(x,y) (2.0*sin(x.^5.0).*8.0*y.^2.0 + 10.0*y.^3.0 + 10.0*y.^1.0);

ax = -0.59;
bx = -2.15;
nx = 2;

ay = -1.26;
by = -0.33;
ny = 3;

[Integral, Info] = gauss_legendre_dupla (ax, bx, nx, ay, by, ny, f)
