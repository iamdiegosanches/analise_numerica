clear
clc

peso = [50;60;70;80;50;60;70;80;50;60;70;80];
idade = [25;25;25;25;45;45;45;45;65;65;65;65];
y = [2500;2850;3200;3550;2350;2700;3000;3350;1950;2250;2550;2800];
plot3(peso,y,idade, 'o');

x = [peso idade];
n = size(x, 1);
v = 2;
p = v+1;
ii = 1;

[b, r2, s2, AICc, Info]  = regressao_linear_en (n, v, p, ii, x, y)

xp1 = linspace(peso(1), peso(end), 100);
xp2 = linspace(idade(1), idade(end), 100);

cal = b(1) + b(2)*xp1 + b(3)*xp2;
hold on;
plot3(xp1, cal, xp2, '-r');
