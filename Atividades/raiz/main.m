clear
clc

f = @(x) (-8.00*x.^5 + 5.00*x.^4 - 2.00*x.^3 - 6.00*x.^2+1.00*x-8.00);
f_der = @(x) (-40*x.^4 + 20*x.^3 - 6*x.^2 - 12*x.^1 + 1);
f_der2 = @(x) (-160*x.^3 + 60*x.^2 - 12*x - 12);
Toler = 10^(-5);
IterMax = 10;

x = linspace(-50, 50, 100);
plot(x,f(x)); # Definindo o intervalo

[Raiz, Iter, Info] = halley (-31, Toler, IterMax, f, f_der, f_der2)