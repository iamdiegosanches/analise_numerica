clear
clc

n = input('Digite a ordem da matriz dos coeficientes: ');

mat = rand(n)*100;
b = rand(n, 1)*100;

[~, det] = decomposicao_LU(mat);

if det == 0
  disp('O sistema nao tem solucao');
  return;
endif

x = sol_decomp_LU(mat, b)'
