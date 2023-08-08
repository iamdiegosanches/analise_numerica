clear
clc

f = @(x) (4*sin(x.^7).*9.*cos(x.^4) + 6*(x.^2).*5.*cos(x.^3));

a = -0.75;
b = -1.34;
n = 6;

[Integ, Info] = gauss_legendre (a, b, n, f)
