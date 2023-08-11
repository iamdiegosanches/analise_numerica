function [A Pivot PdU Info] = Decomposicao_LU(m,n,A)
  for i = 1:m
    Pivot(i)=i;
  endfor
  PdU=1;
  Info=0;
  for j=1:min(m,n);
    p=j;
    Amax=abs(A(j,j));
    for k= j+1:m;
      if abs(A(k,j))>Amax;
        Amax=abs(A(k,j));
        p=k;
      endif
    endfor
    if p~=j
      for k=1:n;
        t=A(j,k);
        A(j,k)=A(p,k);
        A(p,k)=t;
      endfor
      i=Pivot(j);;
      Pivot(j)=Pivot(p);
      Pivot(p)=i;
      PdU=-PdU;
    endif
    PdU=PdU*A(j,j);
    if abs(A(j,j))~=0;
      r = 1/A(j,j);
      for i = j+1:m;
        Mult=A(i,j)*r;
        A(i,j)=Mult;
        for k = j+1:n
          A(i,k)=A(i,k)-Mult*A(j,k)
        endfor
      endfor
    else
      if Info = 0;
        Info = j;
      endif
    endif
  endfor
endfunction
