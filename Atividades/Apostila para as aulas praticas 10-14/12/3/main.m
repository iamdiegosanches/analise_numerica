clear
clc

f1 = @(x,y) (-x.^2.*y + 5*x);

[Integral, Info] = newton_cotes_dupla (2, 3, 1, 1, 0, 2, 1, 1, f1)
[Integral, Info] = newton_cotes_dupla (2, 3, 2, 2, 0, 2, 2, 2, f1)
[Integral, Info] = newton_cotes_dupla (2, 3, 3, 3, 0, 2, 3, 3, f1)

f2 = @(x,y) (-2*x^2*y + exp(x+y));

[Integral, Info] = newton_cotes_dupla (10, 11.5, 3, 3, 5, 8, 3, 3, f2)
[Integral, Info] = newton_cotes_dupla (10, 11.5, 5, 5, 5, 8, 5, 5, f2)
[Integral, Info] = newton_cotes_dupla (10, 11.5, 4, 4, 5, 8, 4, 4, f2)

f3 = @(x,y) (cos(x+y));
[Integral, Info] = newton_cotes_dupla (pi/2, pi, 1, 1, pi/4, pi/2, 1, 1, f3)
[Integral, Info] = newton_cotes_dupla (pi/2, pi, 2, 2, pi/4, pi/2, 2, 2, f3)
[Integral, Info] = newton_cotes_dupla (pi/2, pi, 3, 3, pi/4, pi/2, 3, 3, f3)

