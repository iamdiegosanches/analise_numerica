clear
clc

A = input('Insira a matriz: ')
if size(A, 1) ~= size(A, 2)
  disp('A matriz deve ser quadrada. ');
  return;
endif

if A == A'
  disp('A matriz e simetrica. ');
elseif A == -A'
  disp('A matriz e anti-simetrica');
else
  disp('A matriz nao e simetrica ou anti-simetrica');
endif

