clear
clc


ax = -2.65;
bx = -1.75;
nx = 2;

ay = -1.26;
by = -1.05;
ny = 1;

mx = my = 6;

f = @(x,y) (9.0*e.^(y.^4.0)*5.0*sin(y.^2.0) + 7.0*y.^4.0 + 6.0*y.^2.0);

[Integral, Info] = newton_cotes_dupla (ax, bx, nx, mx, ay, by, ny, my, f)