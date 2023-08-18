clear
clc

f = @(v, t) (2000/(200-t));
v0 = 0;
a = 0;
b = 50;
m = 500;

[VetT, VetV] = rk4 (a, b, v0, m, f)

[VetX, VetY] = Euler (a, b, v0, m, f)
