clear
clc

x1 = [-8.70 -6.85 -6.73 -5.64 -4.02 -3.98 -2.55 -2.41 -2.00 -1.70 -1.70 -1.35 1.94 2.06 3.65 3.75 3.84 6.63 8.27 9.45];
x2 = [-9.65 -7.42 -5.46 -4.76 -3.27 -1.48 0.44 1.40 2.26 3.73 4.12 6.65 7.06 7.99 8.20 8.21 8.39 9.73 9.91 9.98];
y = [14.30 9.83 5.92 4.52 1.54 -2.04 -5.89 -7.79 -9.52 -12.45 -13.24 -18.30 -19.13 -20.97 -21.40 -21.41 -21.79 -24.46 -24.83 -24.96];

x = [x1' x2'];

#grafico de dispersao
plot3(x1, y, x2, '*pm');
title('Grafico de dispersao e reta ajustada')
hold on

n = size(x, 1);
v = 2;
p = v+1;
ii = 1;

[b, r2, s2, AICc, Info]  = regressao_linear_en (n, v, 4, ii, x, y')

xp1 = linspace(x1(1), x1(end), 100);
xp2 = linspace(x2(1), x2(end), 100);

yplot = b(1) + b(2)*xp1 + b(3)*xp2;
plot3(xp1, yplot, xp2,  '-g');

