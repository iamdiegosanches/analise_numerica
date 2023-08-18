clear
clc

f = @(v, t) ((1-3*v)/1);
v0 = 0;
a = 0;
b = 2;
m = 10;

[VetX, VetY] = Euler (a, b, v0, m, f)
