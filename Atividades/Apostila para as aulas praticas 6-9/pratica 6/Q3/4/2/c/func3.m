clear
clc

disp('');
x = [-2.564 -1.316];
y = sin((x).^2)./exp(x) - 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.564 -2.148 -1.316];
y = sin((x).^2)./exp(x) - 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.564 -2.148 -1.316 -0.9007];
y = sin((x).^2)./exp(x) - 1;
c = coeficientes_polinomio (length(x)-1, x, y)

disp('');
x = [-2.564 -2.148 -1.316 -0.9007 0.6236];
y = sin((x).^2)./exp(x) - 1;
c = coeficientes_polinomio (length(x)-1, x, y)
