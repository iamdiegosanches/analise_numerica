clear
clc

# Segunda funcao
disp('Segunda funcao');
# 1
disp('');
disp('Lista 1');
x = [0.5 1.0];
y1 = 5*(0.5^2) + 3*(0.5) - 10;
y2 = 5*(1.0^2) + 3*(1.0) - 10;
y = [y1 y2];
z = 0.250;
valor_calculado = 5*(z^2) + 3*z - 10
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 2
disp('');
disp('Lista 2');
x = [-1.5 0.5 1.5];
y1 = 5*(-1.5^2) + 3*(-1.5) - 10;
y2 = 5*(0.5^2) + 3*(0.5) - 10;
y3 = 5*(1.5^2) + 3*(1.5) - 10;
y = [y1 y2 y3];
z = 0;
valor_calculado = 5*(z^2) + 3*z - 10
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 3
disp('');
disp('Lista 3');
x = [-2.0 -1.5 0.0 2.0];
y1 = 5*(-2.0^2) + 3*(-2.0) - 10;
y2 = 5*(-1.5^2) + 3*(-1.5) - 10;
y3 = 5*(0.0^2) + 3*(0.0) - 10;
y4 = 5*(2.0^2) + 3*(2.0) - 10;
y = [y1 y2 y3 y4];
z = 1.5;
valor_calculado = 5*(z^2) + 3*z - 10
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)

# 4
disp('');
disp('Lista 4');
x = [-4.0 -2.5 2.0 3.0 4.0];
y1 = 5*(-4.0^2) + 3*(-4.0) - 10;
y2 = 5*(-2.5^2) + 3*(-2.5) - 10;
y3 = 5*(2.0^2) + 3*(2.0) - 10;
y4 = 5*(3.0^2) + 3*(3.0) - 10;
y5 = 5*(4.0^2) + 3*(4.0) - 10;
y = [y1 y2 y3 y4 y5];
z = 1;
valor_calculado = 5*(z^2) + 3*z - 10
valor_interpolado = interpola (x, y, z)
erro = abs(valor_calculado - valor_interpolado)
