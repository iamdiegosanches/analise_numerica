clear
clc

clear
clc

# Terceira funcao
disp('Terceira funcao');

# 1
disp('');
disp('Lista 1');
x = [-3.11 5.196];
y1 = 4/(exp(5*(-3.11)^2));
y2 = 4/(exp(5*(5.196)^2));
y = [y1 y2];
z = 2;
valor_calculado = 4/(exp(5*(z)^2))
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 2
disp('');
disp('Lista 2');
x = [-3.11 -2.50 2.15];
y1 = 4/(exp(5*(-3.11)^2));
y2 = 4/(exp(5*(-2.50)^2));
y3 = 4/(exp(5*(2.15)^2));
y = [y1 y2 y3];
z = 1.150;
valor_calculado = 4/(exp(5*(z)^2))
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 3
disp('');
disp('Lista 3');
x = [-3.11 -2.00 0.0 3.150];
y1 = 4/(exp(5*(-3.11)^2));
y2 = 4/(exp(5*(-2.00)^2));
y3 = 4/(exp(5*(0.0)^2));
y4 = 4/(exp(5*(3.150)^2));
y = [y1 y2 y3 y4];
z = -1.65;
valor_calculado = 4/(exp(5*(z)^2))
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

#4
disp('');
disp('Lista 4');
x = [-4.53 -2.56 -1.76 3.6 5.13];
y1 = 4/(exp(5*(-4.53)^2));
y2 = 4/(exp(5*(-2.56)^2));
y3 = 4/(exp(5*(-1.76)^2));
y4 = 4/(exp(5*(3.6)^2));
y5 = 4/(exp(5*(5.13)^2));
y = [y1 y2 y3 y4 y5];
z = 2.25;
valor_calculado = 4/(exp(5*(z)^2))
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)
