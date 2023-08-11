function NumMax = Fourier(n,c,a,b)
  n1=n+1;
  n2=n+2;
  for i=1:n
    DerPol(i)=c(i);
  endfor
  DerPol_a(1) = Horner(n,c,a);
  DerPol_b(1) = Horner(n,c,b);
  for i=1:n
    for j=1:n1-i
      DerPol(j)=DerPol(j)*(n2-i-j);
    endfor
    DerPol_a(i+1) = Horner(n-i,DerPol,a);
    DerPol_b(i+1) = Horner(n-i,DerPol,b);
  endfor
  VarSinal_a = Troca_Sinais(n1,DerPol_a)
  VarSinal_b = Troca_Sinais(n1,DerPol_b)
  NumMax = VarSinal_a - VarSinal_b
  endfunction
