# Questionário 6
clear
clc

m = input('Informe a dimensão da matriz A (m): ');
n = input('Informe o tamanho do vetor X (n): ');

A = randi([0,100],m,n);
X = randi([0,100],n,1);

valor = 0;
cont = 0;
valor2 = A*X;

for i = 1 : n
  valor = 0;
  for j = 1 : n
    valor = valor + X(j)*A(i,j); 
  endfor
  if valor2(i) ~= valor
      cont = cont + 1;
   endif
endfor

if cont ~= 0
  disp('A afirmativa está incorreta');
else
  disp('A afirmativa está correta');
endif