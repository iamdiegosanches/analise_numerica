# Questão 3 - questionario 6

cont = 0;
for i = 1 : 1000
  matriz = rand(3);
  k = rand();
  L = rand();
  if !all((k + L) * matriz(:) == k * matriz(:) + L * matriz(:))
    cont = cont + 1;
  endif
endfor

if cont ~= 0
  disp('Propriedade inválida');
else
  disp('Propriedade válida');
endif
