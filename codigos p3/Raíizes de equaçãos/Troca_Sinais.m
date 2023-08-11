 function Var = Troca_Sinais(n1,c)
    Var=0;
    i=1;
    for j=2:n1
      if c(j)~=0
        if c(i)*c(j)<0
          Var=Var+1;
        endif
        i=j;
      endif
    endfor
endfunction
