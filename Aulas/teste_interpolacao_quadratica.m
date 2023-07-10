clear
clc

# Exemplo de funcionamento interpolacao quadratica

x = [0.3 0.6 0.9];
y = [1.3499 1.8221 2.4596];

[Yinter, MatrizCoef, Conderro] = interpolacao_polinomial(x, y, 0.5);

xplot = linspace(x(1),3,100);
yplot = MatrizCoef(1) + MatrizCoef(2)*xplot + MatrizCoef(3)*xplot.^2;
plot(x,y,'-*b');
hold on
plot(xplot,yplot, '..r');
yplot = exp(xplot);
plot(xplot, yplot, '-g');
title('Comparacao entre interpolacao quadratica e a funcao real');
legend('Pontos','Interpolacao','Funcao');
