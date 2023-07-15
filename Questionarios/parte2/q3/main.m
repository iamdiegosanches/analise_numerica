clear
clc

x = [1 2 3 4 5 6];
y = [0.841 0.909 0.141 -0.757 -959 0.279];

xq = [x(1) x(2) x(3)];
yq = [y(1) y(2) y(3)];
[~, coef, ~] = interpolacao_polinomial(xq, yq, 2)

xplot = linspace(-5, 8, 100);
yplot = coef(1) + coef(2)*xplot + coef(3)*xplot.^2;
plot(xplot, yplot, 'b-');

r = roots(coef)



