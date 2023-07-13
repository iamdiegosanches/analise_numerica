clear
clc

x = 1:12;
y = [2.689 2.856 3.192 3.013 3.187 3.100 3.425 3.629 3.686 3.982 4.145 3.975];

# fazendo a interpolação linear
xlin = [x(1) x(end)];
ylin = [y(1) y(end)];

ValInter = 6;

[Yinter, MatrizCoef, Conderro]=interpolacao_polinomial(xlin, ylin, ValInter)

xplot = linspace(x(1),x(end),100);
yplot = MatrizCoef(1) + MatrizCoef(2)*xplot;
plot(xplot,yplot, '*r');
hold on
plot(ValInter,Yinter,'ob');
plot(x,y,'-*g');


# fazendo a interpolação quadrática
xq = [x(1) x(6) x(end)];
yq = [y(1) y(6) y(end)];

[Yinter, MatrizCoef, Conderro] = interpolacao_polinomial(xq, yq, ValInter)

xplot = linspace(x(1),x(end),100);
yplot = MatrizCoef(1) + MatrizCoef(2)*xplot + MatrizCoef(3)*xplot.^2;
plot(xplot,yplot, '*r');

