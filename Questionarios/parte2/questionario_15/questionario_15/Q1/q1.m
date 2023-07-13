clear
clc

x = [2.84 2.81 2.80 3.28 2.97 2.89 2.01 3.62 4.71 2.01 4.52 3.43 2.32 3.26 4.19 2.80 4.52 2.45 2.74 4.36];
y = [0.19 0.19 0.18 0.28 0.22 0.20 0.00 0.33 0.48 0.00 0.46 0.30 0.08 0.27 0.42 0.18 0.46 0.11 0.17 0.44];

#grafico de dispersao
plot(x, y, 'ob');
title('Grafico de dispersao e reta ajustada')
hold on
[b, r2, s2, AICc, Info]  = regressao_linear_en (length(x), 1, 2, 1, x', y')

xplot = linspace(min(x), max(x), 50);
yplot = b(1) + b(2)*xplot;
plot(xplot, yplot, '-r');
