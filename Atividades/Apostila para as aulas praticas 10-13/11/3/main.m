clear
clc

# valor analitico
f1 = @(x) (4*x.^2 + 5);
disp('------ prinmeira funcao ------');
[Integ, Info] = gauss_legendre (1, 3, 1, f1)
[Integ, Info] = gauss_legendre (1, 3, 2, f1)
[Integ, Info] = gauss_legendre (1, 3, 3, f1)
disp('------ valor analitico ------');
i1 = integral(f1, 1, 3)
disp('O valor melhorou');

f2 = @(x) (3*x.^3.*exp(x.^2));
disp('------ segunda funcao ------');
[Integ, Info] = gauss_legendre (1, 3, 3, f2)
[Integ, Info] = gauss_legendre (1, 3, 4, f2)
[Integ, Info] = gauss_legendre (1, 3, 5, f2)
disp('------ valor analitico ------');
i2 = integral(f2, 1, 3)
disp('O valor foi melhorando quanto maior o numero de pontos');


f3 = @(x) (3*x.*cos(pi*x));
disp('------ terceira funcao ------');
[Integ, Info] = gauss_legendre (-pi/4, pi/2, 1, f3)
[Integ, Info] = gauss_legendre (-pi/4, pi/2, 2, f3)
[Integ, Info] = gauss_legendre (-pi/4, pi/2, 3, f3)
[Integ, Info] = gauss_legendre (-pi/4, pi/2, 4, f3)
[Integ, Info] = gauss_legendre (-pi/4, pi/2, 5, f3)
[Integ, Info] = gauss_legendre (-pi/4, pi/2, 6, f3)
disp('------ valor analitico ------');
i3 = integral(f3, -pi/4, pi/2)
disp('O valor foi melhorando quanto maior o numero de pontos');

