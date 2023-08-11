# Objetivo: Resolver um PVI
# a = limite inferior
# b = limite superior
# y0 = valor inicial
# m = numero de subintervalos
# PVI = Problema do valor inicial




function [VetX VetY] = Metodo_Euler(a,b,y0,m,f)
  h=(b-a)/m;
  x=a;
  y=y0;
  VetX(1)=x;
  VetY(1)=y;
  fxy=f(x,y);
  for i=1:m 
  x=a+(i*h)
  y=y+(h*fxy)
  fxy=f(x,y)
  
  VetX(i+1)=x;
  VetY(i+1)=y
  endfor
endfunction
