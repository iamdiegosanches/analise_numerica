x = 1:12
y = [2.689 2.856 3.192 3.013 3.187 3.100 3.425 3.629 3.686 3.982 4.145 3.975]

# fazendo a interpolação linear
xlin = [x(1) x(end)]
ylin = [y(1) y(end)]

ValInter = 6

[Yinter, MatrizCoef, Conderro]=interpolacao_polinomial(xlin, ylin, ValInter)

xplot = linspace(x(1),x(end),100)
yplot = MatrizCoef(1) + MatrizCoef(2)*xplot
plot(xplot,yplot, '*r');
hold on
plot(ValInter,Yinter,'ob');
plot(x,y,'-*g');


# fazendo a interpolação quadrática
xq = [x(1) x(6) x(end)]
yq = [y(1) y(6) y(end)]


cor = {'*r', '*g', '*b', '*c', '*y', '*m', '*k', 'or', 'og', 'ob', 'oc', 'om', 'ok'};
[Yinter, MatrizCoef, Conderro]=interpolacao_polinomial(xq, yq, ValInter)

xplot = linspace(x(1),x(end),100)
yplot = MatrizCoef(1) + MatrizCoef(2)*xplot + MatrizCoef(3)*xplot.^2;
plot(xplot,yplot, '*r');


# Outra maneira de fazer tudo acima
for np = 2 : 12
x1 = x(floor(linspace(x(1),x(end),np)));
y1 = y(floor(linspace(x(1),x(end),np)));

[Yinter, MatrizCoef, Conderro]=interpolacao_polinomial(x1, y1, ValInter)
yolot = 0;
xplot = linspace(x(1),x(end),100)
for i = 1 : length(MatrizCoef)
yplot = yplot + MatrizCoef(i)*xplot.^(i-1);
endfor
plot(xplot,yplot, cor{np-1});
hold on
endfor
plot(ValInter,Yinter,cor{1});
plot(x,y,'-dg')