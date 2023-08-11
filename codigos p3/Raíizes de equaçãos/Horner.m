function [y]=horner(n,c,a)
    y = c(1);
    for i=2:n+1
        y = y*a+c(i);
    endfor
endfunction
