clear
clc

flag = 1;
for i =  1 : 1000
  ordem = randi([2, 10]);
  A = randi([1, 1000], ordem);
  B = randi([1, 1000], ordem);

  if traco(A*B) ~= traco(B*A)
    flag = 0;
  endif
endfor

if flag == 1
  disp('A propriedade e valida');
else
  disp('A propriedade e invalida');
endif

