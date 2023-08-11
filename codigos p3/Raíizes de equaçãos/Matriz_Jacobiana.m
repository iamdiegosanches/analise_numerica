function j = Vetor_Funcao(x)
  j(1,1) = 2*x(1)+x(2);
  j(1,2) = x(1)-2*x(2);
  j(2,1) = 1/x(1);
  j(2,2) = 1/(2*sqrt(x(2)+2));
endfunction
