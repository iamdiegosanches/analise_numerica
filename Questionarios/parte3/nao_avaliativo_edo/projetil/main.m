clear
clc

f = @(t,v) (-32 - 2*(v^2));
v0 = 1;
a = 0;
b = 0.01;
m = 10;

# A velocidade final deve ser 0
while 1
  [VetX, VetY] = Euler (a, b, v0, m, f);
  if VetY(end) <= 0
    break;
  else
    b = b+0.01;
  endif
endwhile
tempo = b

