function [x]= solucao_LU(A,b)
  [A,Pivot,PdU,Info]=Decomposicao_LU_Pivotacao_Parcial(rows(A),columns(A),A);
  U=triu(A)
  L=eye(size(A))+tril(A,-1)
  P=eye(size(A));
  P=P(Pivot,:);
  b=P*b;
  n=size(A,1);
  y=Substituicoes_Sucessivas(n,L,b)
  x=Substituicoes_Retroativas(n,U,y)
endfunction
