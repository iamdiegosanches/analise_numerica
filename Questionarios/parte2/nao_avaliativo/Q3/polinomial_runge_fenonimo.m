clear
clc

x = [2.75;3.10;3.45;3.70;4.00;4.30;4.70;4.95;5.20;5.60];
y = [495;388;311;269;229;197;183;146;131;111];
plot(x,y,'-b');

n = 11;

xp = linspace(x(1), x(end), 100);

coeficientes = coeficientes_lagrange(n-1, x, y)

yp = zeros(size(xp));
for i = 1 : n-1
  yp = yp + coeficientes(i)*xp.^(n-i-1);
endfor
hold on
plot(xp,yp,'-r');


