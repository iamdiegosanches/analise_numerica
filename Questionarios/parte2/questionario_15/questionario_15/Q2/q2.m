clear
clc

x = [3.42 5.48 3.45 3.49 5.06 3.75 3.45 6.00 3.26 4.76 3.05 3.47 3.50 4.84 5.71 5.66 4.67 5.97 4.66 3.67];
y = [0.10 0.41 0.10 0.11 0.36 0.16 0.10 0.47 0.06 0.32 0.01 0.11 0.11 0.33 0.44 0.44 0.31 0.47 0.31 0.15];

#grafico de dispersao
plot(x, y, 'ob');
title('Grafico de dispersao e reta ajustada')
hold on

[b, r2, s2, AICc, Info]  = regressao_linear_en (length(x), 1, 6, 1, x', y')

xplot = linspace(min(x), max(x), 50);
yplot = b(1) + b(2)*xplot + b(3)*xplot.^2 + b(4)*xplot.^3 + b(5)*xplot.^4 + b(6)*xplot.^5;
plot(xplot, yplot, '-r');
