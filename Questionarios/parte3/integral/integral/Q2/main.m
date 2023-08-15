clear
clc

f = @(x) (3*cos(x.^10).*1.*x.^4 + 6*(x.^2).*7.*cos(x.^8));

a = -0.75;
b = -1.82;
m = 6;
n = 2;

[Integral, Info] = newton_cotes (a, b, n, m, f)
