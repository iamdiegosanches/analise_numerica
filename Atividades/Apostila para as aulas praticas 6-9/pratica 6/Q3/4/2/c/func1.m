clear
clc

x = [-1.178 -0.6236];
y = x./exp(x./2);
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-1.178 -0.3236 -0.3464];
y = x./exp(x./2);
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x  = [0.485 0.9007 1.594 2.564];
y = x./exp(x./2);
c = coeficientes_polinomio (length(x)-1, x, y)
