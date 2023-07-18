clear
clc

x = [1 2 3 4 5 6];
y = [0.841 0.909 0.141 -0.757 -959 0.279];
plot(x, y, 'o');

xq = [x(1) x(3) x(6)];
yq = [y(1) y(3) y(6)];
[~, coef, ~] = interpolacao_polinomial(xq, yq, 3)

xplot = linspace(x(1), x(end), 100);
yplot = coef(1) + coef(2)*xplot + coef(3)*xplot.^2;
plot(xplot, yplot, 'b-');

r = roots(coef)



