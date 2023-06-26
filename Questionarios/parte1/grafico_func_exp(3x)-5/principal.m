clear
clc

x = linspace(-5, -1, 100);
y = exp(3*x) - 5;
plot(x, y, 'm*');
xlabel('tempo');
ylabel('concentração');
title('Gráfico da função y = e^{3x} - 5');
