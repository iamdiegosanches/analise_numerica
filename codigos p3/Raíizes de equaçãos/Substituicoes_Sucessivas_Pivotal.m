function [y] = Substituicoes_Sucessivas_Pivotal(n,L,b,Pivot)
  k=Pivot(1);
  y(1)=b(k);
  for i = 2:n
    Soma=0;
    for j=1:(i-1);
      Soma=Soma+L(i,j)*y(j);
    endfor
    k=Pivot(i);
    y(i)=b(k)-Soma;
  endfor
endfunction
