clear
clc

x = [-2.148 0.9007];
y = 3*(x.^2) + 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.148 0.9007 0];
y = 3*(x.^2) + 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.148 0 0.9007 1.732];
y = 3*(x.^2) + 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.148 -1.532 -0.607 0 1.732];
y = 3*(x.^2) + 1;
c = coeficientes_polinomio (length(x)-1, x, y)
