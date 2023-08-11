function [Integral Info] = Gauss_Legendre_Dupla(ax,bx,nx,ay,by,ny,f)
  Integral = 0;
  Info = 0;
  [T,alfa,Info]=Gauss_Legendre_AbsPes(nx)
  if Info ~= 0
    return
  endif
  if ny == nx
    for j = 1:ny
      beta(j)=alfa(j);
      U(j)=T(j);
    endfor
  else
    [U,beta,Info]=Gauss_Legendre_AbsPes(ny)
    if Info ~= 0
      return
    endif
  endif
  bax = (bx - ax)/2;
  bay = (by - ay)/2;
  for i = 1:nx
    x = ax+bax*(T(i)+1);
    Soma = 0;
    for j = 1:ny
      y = ay+bay*(U(j)+1);
      fxy = f(x,y);
      Soma = Soma + beta(j)*fxy;
    endfor
    Integral = Integral + alfa(i)*Soma;
  endfor
  Integral = bax*bay*Integral;
endfunction
