function [VetX VetY Erro] = Adams_Bashforth_Moulton_4(a,b,y0,m,f)
  nc= # Numero de correções
  h=(b-a)/m
  [VetX VetY Erro]=Dormand_Price_54(a,a+3)*h,y0,3,f)
  x=VetX(1)
  y=VetY(1)
  f0=f(x,y)
  x=VetX(2)
  y=VetY(2)
  f1=f(x,y)
  x=VetX(3)
  y=VetY(3)
  f2=f(x,y)
  x=VetX(4)
  y=VetY(4)
  f3=f(x,y)
  
  for i=4:m
    x=a+(i*h)
    VetX(i+1)=x
    Ypre=VetY(i)+((h*((55*f3)-(59*f2)+(37*f1)-(9*f0)))/24)
    y=Ypre
    f4=f(x,y)
    for j=1:nc
      Ycor=VetY(i)+((h*((9*f4)+(19*f3)-(5*f2)+f1))/24)
      y=Ycor
      f4=f(x,y)
    endfor
    VetY(i+1)=Ycor
    Erro(i+1)=abs(Ycor-Ypre)*(19/270)
    f0=f1
    f1=f2
    f2=f3
    f3=f4
  endfor
  
 endfunction