function [x]=Substituicoes_Retroativas(n,U,d)
    x(n) = d(n)/U(n,n);
    for i=n-1:-1:1
        Soma = 0;
        for j=i+1:n
            Soma = Soma+U(i,j)*x(j);
        endfor
        x(i) = (d(i)-Soma)/U(i,i);
    endfor
endfunction
