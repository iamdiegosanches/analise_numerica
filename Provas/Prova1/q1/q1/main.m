clear
clc

A = [50.90 -10.16 8.47 -19.53 -2.74; ...
-10.16 38.47 -14.14 0.03 9.14; ...
8.47 -14.14 53.19 -18.69 -6.89; ...
-19.53 0.03 -18.69 54.04 8.79; ...
-2.74 9.14 -6.89 8.79 29.56];
b = [9.75;-11.64;4.78;-6.41;-10.80];

[R, Det, Info] = Cholesky (A);

if Det == 0
  disp('O sistema nao tem solucao');
else
  # a funcao abaixo verifica se pode ser resolvido por Cholesky
  x = sol_Cholesky(A, b)'
endif
