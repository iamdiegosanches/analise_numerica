clear
clc

f1 = @(x) (4*x^2 + 5);
disp('------ prinmeira funcao ------');
[Integ, Info] = gauss_legendre (1, 3, 1, f1)
[Integ, Info] = gauss_legendre (1, 3, 2, f1)
[Integ, Info] = gauss_legendre (1, 3, 3, f1)

f2 = @(x) (3*x^3*exp(x^2));
disp('------ segunda funcao ------');
[Integ, Info] = gauss_legendre (1, 3, 3, f2)
[Integ, Info] = gauss_legendre (1, 3, 4, f2)
[Integ, Info] = gauss_legendre (1, 3, 5, f2)

f3 = @(x) (3*x*cos(pi*x));
disp('------ terceira funcao ------');
[Integ, Info] = gauss_legendre (-pi/4, pi/2, 1, f3)
[Integ, Info] = gauss_legendre (-pi/4, pi/2, 2, f3)
[Integ, Info] = gauss_legendre (-pi/4, pi/2, 3, f3)

