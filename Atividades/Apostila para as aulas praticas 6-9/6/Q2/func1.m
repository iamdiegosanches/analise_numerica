clear
clc

# Primeira funcao
disp('Primeira funcao');
#1
disp('');
disp('Lista 1');
x = [-8.154 -4.919];
y1 = exp(-8.154/2)*(-8.154)^2 - 10;
y2 = exp(-4.919/2)*(-4.919)^2 - 10;
y = [y1 y2];
z = -5;
valor_calculado = exp(z/2)*(z)^2 - 10
valor_interpolado = interpola (x, y, z)
erro  = abs(valor_calculado - valor_interpolado)

#2
disp('');
disp('Lista 2');
x = [-6.166 -3.950 -1.871];
y1 = exp(-6.166/2)*(-6.166)^2 - 10;
y2 = exp(-3.950/2)*(-3.950)^2 - 10;
y3 = exp(-1.871/2)*(-1.871)^2 - 10;
y = [y1 y2 y3];
z = -4.76;
valor_calculado = exp(z/2)*(z)^2 - 10
valor_interpolado = interpola (x, y, z)
erro  = abs(valor_calculado - valor_interpolado)

#3
disp('');
disp('Lista 3');
x = [-1.455 0 0.762 1.178];
y1 = exp(-1.455/2)*(-1.455)^2 - 10;
y2 = exp(0/2)*(0)^2 - 10;
y3 = exp(0.762/2)*(0.762)^2 - 10;
y4 = exp(1.178/2)*(1.178)^2 - 10;
y = [y1 y2 y3 y4];
z = -0,83;
valor_calculado = exp(z/2)*(z)^2 - 10
valor_interpolado = interpola (x, y, z)
erro  = abs(valor_calculado - valor_interpolado)
