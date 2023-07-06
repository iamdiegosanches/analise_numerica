clear
clc

x = [-1.178 -0.6236];
y = x./exp(x./2);
z = -1;
Pz = polinomio_lagrange (size(x,2), x, y, z)
z_real = z/exp(z/2);
erro = abs(z_real - Pz)

x = [-1.178 -0.3236 - 0.3464];
y = x./exp(x./2);
z = -0.5;
Pz = polinomio_lagrange (size(x,2), x, y, z)
z_real = z/exp(z/2);
erro = abs(z_real - Pz)

x  = [0.485 0.9007 1.594 2.564];
y = x./exp(x./2);
z = -1;
Pz = polinomio_lagrange (size(x,2), x, y, z)
z_real = z/exp(z/2);
erro = abs(z_real - Pz)
