clear
clc

f1 = @(x) (5*x^3 - 2*x^2 + 8*x - 10);
f1_der = @(x) (15*x^2 - 4*x + 8);

f2 = @(x) (2*x^3 + 5*x^2 - sin(x) - 30);
f2_der = @(x) (6*x^2 + 10*x - cos(x));

f3 = @(x) (exp(-x^2)*cos(x));
f3_der = @(x) (-2*exp(-x^2)*x*cos(x) - exp(-x^2)*sin(x));

f4 = @(x) ((x+1)*(x-1)*(x-3)^5);
f4_der = @(x) (2*x*(x-3)^5 + 5*x^2*(x-3)^4 - 5*(x-3)^4);

f5 = @(x) ((x+2)^3 * sqrt(x^2 + 1));
f5_der = @(x) ((3*x^4 + 12*x^3 + 15*x^2 + x*(x+2)^3 + 12*x + 12)/(sqrt(x^2+1)));

Toler = 10^(-10);
IterMax = 500;

[Raiz, Iter, Info] = bissecao (a, b, Toler, IterMax, f)

[Raiz, Iter, Info] = muller (a, b, Toler, IterMax, f)

[Raiz, Iter, Info] = newton_raphson (x, Toler, IterMax, f, f_der)

[Raiz, Iter, Info] = pegaso (a, b, Toler, IterMax, f)

[Raiz, Iter, Info] = regula_falsi (a, b, Toler, IterMax, f)

[Raiz, Iter, Info] = schroder (m, x, Toler, IterMax, f, f_der)

[Raiz, Iter, Info] = secante (a, b, Toler, IterMax, f)

[Raiz, Iter, Info] = WDBrent (a, b, Toler, IterMax, f)
