clear

flag = 1;
for i = 1 : 1000
  n = randi([3,7]);
  A = rand(n)*100;
  k = rand();
  l = rand();
  if (k + l)*A ~= k*A + l*A
    flag = 0;
  endif
endfor

if flag == 1
  disp('A propriedade e valida.');
else
  disp('A propriedade e invalida.');
endif

