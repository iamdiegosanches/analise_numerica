clear
clc

linhas = input('Digite o numero de linhas da matriz (O numero de linhas deve ser maior ou igual ao numero de colunas): ');
colunas = input('Digite o numero de colunas da matriz: ');

if linhas < colunas
  disp('erro:o numero de linhas deve ser maior ou igual ao numero de colunas');
  return;
endif

matriz = zeros(linhas, colunas);

for i = 1 : colunas
  matriz(i, i) = randi([1,100]);
endfor

disp(matriz);

