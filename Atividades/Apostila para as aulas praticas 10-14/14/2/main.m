clear
clc

f1=@(x,y)(sqrt(x));
for i = 2 : 5
  disp('numero de subintervalos');
  disp(i);
  [VetX,VetY] = Euler (0,2,0,i,f1)
endfor

f2=@(x,y)((x.^2)+(y.^2));
for i = 2 : 2 : 8
  disp('numero de subintervalos');
  disp(i);
  [VetX,VetY] = Euler (1,2,0,i,f2)
endfor

f3=@(x,y)(x.*y);
for i = 4 : 2 : 10
  disp('numero de subintervalos');
  disp(i);
  [VetX,VetY] = Euler (0,0,1,i,f3)
endfor
