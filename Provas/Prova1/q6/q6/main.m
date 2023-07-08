clear
clc

A = [3 1 0.5; 1.5 3 0.7; 2 2 5];
b = [30;24.5;11.4];

if det(A) == 0
  disp('O sistema nao tem solucao');
  return;
endif

# Realizando a transposta
[x, Iter, Info] = gauss_seidel (3, A', b, 10^(-6), 300);

if Info == 1
  disp('O sistema nao tem solucao pelo metodo de Gauss Seidel');
else
  disp('A solucao e: ');
  disp(x);
endif
