clear

flag = 1;
for i = 1 : 1000
  matriz = randi([0,1000], 3);
  k = randi(1000);
  L = randi(1000);
  if (k + L) * matriz ~= k * matriz + L * matriz
    flag = 0;
  endif
endfor

if flag == 0
  disp('Propriedade invalida');
else
  disp('Propriedade valida');
endif