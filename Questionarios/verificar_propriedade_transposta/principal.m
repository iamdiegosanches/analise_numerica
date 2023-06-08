clear
clc

flag = 1;

for i = 1 : 1000
  size = randi([2, 7]);
  A = randi([0, 100], size);
  B = randi([0, 100], size);
  if (A+B)' ~= A' + B'
    flag = 0;
  endif
endfor

if flag ~= 1
  disp('Propriedade invalida');
else
  disp('Propriedade valida')
endif

