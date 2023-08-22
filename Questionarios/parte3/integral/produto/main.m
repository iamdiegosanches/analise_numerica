clear
clc

# dC/dx = 1/4 - 100/x^2
# dC = (1/4 - 100/x^2)dx

f = @(x)(1/4 - 100/(x^2));
intervalo = input('Digite o intervalo [a,b]: ');
[Integ, Info] = gauss_legendre (intervalo(1), intervalo(2), 5, f)
