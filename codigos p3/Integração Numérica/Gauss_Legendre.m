function [Integral Info]= Gauss_Legendre(a,b,n)
[T W Info]= Gauss_Legendre_AbsPes(n)
if Info ~= 0
  return
endif
Integral=0;
Info=0;
ba2=(b-a)/2;
for i=1:n
  x=(a+ ba2*(T(i)+1));
  y=f(x);
  Integral=Integral+ y*W(i);
endfor
Integral=ba2*Integral;
endfunction
