function [x]=Substituicoes_sucessivas(n,L,c)
    x(1) = c(1)/L(1,1);
    for i=2:n
        Soma = 0;
        for j=1:i-1
            Soma = Soma+L(i,j)*x(j)
        endfor
        x(i) = (c(i)-Soma)/L(i,i);
    endfor
endfunction

