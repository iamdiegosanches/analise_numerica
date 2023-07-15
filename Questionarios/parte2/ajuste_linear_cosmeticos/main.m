clear
clc

x = [-62;-7;33;41;73];
y = [4035;75;995;1563;5115];

plot(x, y, 'o')
hold on
xplot = linspace(min(x), max(x), 100);
# Ajuste linear
[b, r2, s2, AICc, Info]  = regressao_linear_en (5, 1, 2, 1, x, y);
# Funcao geral
func = b(1) + b(2)*xplot;
# Grafico da funcao
plot(xplot, func, '-r');

# Ajuste quadratico
[b, r2, s2, AICc, Info]  = regressao_linear_en (5, 1, 3, 1, x, y);
# Funcao geral
func = b(1) + b(2)*xplot + b(3)*xplot.^2;
# Grafico da funcao
plot(xplot, func, '-g');

