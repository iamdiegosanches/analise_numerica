function [VetX VetY] = Runge_Kutta_4(a,b,y0,m,f)
  h=(b-a)/m;
  xt=a;
  yt=y0;
  VetX(1)=xt;
  VetY(1)=yt;
  
  for i=1:m
    x=xt
    y=yt
    k1=f(x,y)
    x=xt+(h/2)
    y=yt+((h/2)*k1)
    k2=f(x,y)
    y=yt+((h/2)*k2)
    k3=f(x,y)
    xt=xt+h
    y=yt+(h*k3)
    k4=f(x,y)
    xt=a+(i*h)
    yt=yt+((h/6)*((k1+(2*(k2+k3))+k4))
    
    VetX(i+1)=xt;
    VetY(i+1)=yt
  endfor
  endfunction