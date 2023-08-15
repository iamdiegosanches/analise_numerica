clear
clc


f1 = @(x) (4*x^2 + 5);
disp('------ prinmeira funcao ------');
[Integ, Info] = newton_cotes (1, 3, 1, 1, f1)
[Integ, Info] = newton_cotes (1, 3, 1, 2, f1)
[Integ, Info] = newton_cotes (1, 3, 1, 3, f1)
[Integ, Info] = newton_cotes (1, 3, 2, 1, f1)
[Integ, Info] = newton_cotes (1, 3, 2, 2, f1)
[Integ, Info] = newton_cotes (1, 3, 2, 3, f1)
[Integ, Info] = newton_cotes (1, 3, 3, 1, f1)
[Integ, Info] = newton_cotes (1, 3, 3, 2, f1)
[Integ, Info] = newton_cotes (1, 3, 3, 3, f1)

f2 = @(x) (3*x^3*exp(x^2));
disp('------ segunda funcao ------');
[Integ, Info] = newton_cotes (1, 3, 1, 1, f2)
[Integ, Info] = newton_cotes (1, 3, 1, 2, f2)
[Integ, Info] = newton_cotes (1, 3, 1, 3, f2)
[Integ, Info] = newton_cotes (1, 3, 2, 1, f2)
[Integ, Info] = newton_cotes (1, 3, 2, 2, f2)
[Integ, Info] = newton_cotes (1, 3, 2, 3, f2)
[Integ, Info] = newton_cotes (1, 3, 3, 1, f2)
[Integ, Info] = newton_cotes (1, 3, 3, 2, f2)
[Integ, Info] = newton_cotes (1, 3, 3, 3, f2)

f3 = @(x) (3*x*cos(pi*x));
disp('------ terceira funcao ------');
[Integ, Info] = newton_cotes (-pi/4, pi/2, 1, 1, f3)
[Integ, Info] = newton_cotes (-pi/4, pi/2, 1, 2, f3)
[Integ, Info] = newton_cotes (-pi/4, pi/2, 1, 3, f3)
[Integ, Info] = newton_cotes (-pi/4, pi/2, 2, 1, f3)
[Integ, Info] = newton_cotes (-pi/4, pi/2, 2, 2, f3)
[Integ, Info] = newton_cotes (-pi/4, pi/2, 2, 3, f3)
[Integ, Info] = newton_cotes (-pi/4, pi/2, 3, 1, f3)
[Integ, Info] = newton_cotes (-pi/4, pi/2, 3, 2, f3)
[Integ, Info] = newton_cotes (-pi/4, pi/2, 3, 3, f3)

# Espectativa da relacao entre os metodos:
# O metodo de Gauss-legendre foi mais preciso e estavel para calcular
# as integrais quando comparado ao metodo de Newton-Cotes
