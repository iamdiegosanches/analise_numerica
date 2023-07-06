clear
clc

x = [-2.148 0.9007];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_newton (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)

disp('');
x = [-2.148 0.9007 0];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_newton (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)

disp('');
x = [-2.148 0 0.9007 1.732];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_newton (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)

disp('');
x = [-2.148 -1.532 -0.607 0 1.732];
y = 3*(x.^2) + 1;
z = -0.485;
Pz = polinomio_newton (length(x), x, y, z)
z_real = 3*((z)^2) + 1
erro = abs(z_real - Pz)
