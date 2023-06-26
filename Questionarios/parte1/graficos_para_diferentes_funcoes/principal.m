clear
# Definição dos valores de t
t = linspace(2.55, 4.55, 4);

# Definição dos valores de x
x = linspace(-4.13, 12.39, 50);

# Cálculo dos valores y para a curva atual
y = 9*sin(x.^1)*9.*cos(x.^10)*8*(t(1)^1)*8.*x.^10;
plot(x, y, 'xm');
hold on
y = 9*sin(x.^1)*9.*cos(x.^10)*8*(t(2)^1)*8.*x.^10;
plot(x, y, 'xm');
y = 9*sin(x.^1)*9.*cos(x.^10)*8*(t(3)^1)*8.*x.^10;
plot(x, y, 'xm');
y = 9*sin(x.^1)*9.*cos(x.^10)*8*(t(4)^1)*8.*x.^10;
plot(x, y, 'xm');
