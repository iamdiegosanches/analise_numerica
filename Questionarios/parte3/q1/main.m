clear
clc

r = input('Digite a vazao r: ');
Q0 = input('Digite a quantidade de sal dissolvido: ');

f = @(q,t)(r/5 - r*q/100);
m = 10;
a = 0;
b = 1;

while 1
  [VetX, VetY] = rk4 (a, b, Q0, m, f);
  if VetY(end) <= 0
    break;
  else
    b = b+1;
  endif
endwhile

tempo = b
