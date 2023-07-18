clear
clc

x = [6.10 5.88 5.23 7.30 5.37 5.77 5.40 5.20 6.34 5.38 5.15 6.03 5.04 7.16 6.83 5.28 6.73 6.15 5.33 5.00];
y = [0.27 0.22 0.07 0.46 0.11 0.20 0.12 0.06 0.31 0.11 0.05 0.25 0.02 0.44 0.39 0.09 0.37 0.28 0.10 0.00];

#grafico de dispersao
plot(x, y, '*pm');
title('Grafico de dispersao e reta ajustada')
hold on
[b, r2, s2, AICc, Info]  = regressao_linear_en (length(x), 1, 2, 1, x', y')

xplot = linspace(min(x), max(x), 50);
yplot = b(1) + b(2)*xplot;
plot(xplot, yplot, '-g');