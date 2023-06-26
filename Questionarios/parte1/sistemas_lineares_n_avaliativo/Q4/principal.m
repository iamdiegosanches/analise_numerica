clear
clc

A = [13 6  5; -10 45 5; 0 -8 28];
b = [-2;-1;4];

n = 3;
Toler = 10^(-4);
IterMax = 100;

[x, Iter, Info] = gauss_seidel (n, A, b, Toler, IterMax);
disp('Resultado');
disp(x);
