clear
clc

A = [13.69 20.59 8.88 26.07; ...
     19.82 30.30 14.52 16.21; ...
     10.70 17.11 -1.11 15.29; ...
     25.77 16.68 13.17 54.39];
b = [5.23;15.24;14.69;-8.80];
Toler = 10^(-9);
IterMax = 100;
n = 4;
d = det(A)
[x, Iter, Info] = gauss_seidel (n, A, b, Toler, IterMax);
disp(x)

if Info == 1
  disp('O metodo de Gauss-Seidel nao convergiu dentro do numero maximo de iteracoes.');
endif
