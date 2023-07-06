clear
clc

disp('');
x = [-2.564 -1.316];
y = sin((x).^2)./exp(x) - 1;
z = -2.286;
Pz = polinomio_lagrange (length(x), x, y, z)
z_real = sin(z^2)/exp(z) - 1
erro = abs(z_real - Pz)

disp('');
x = [-2.564 -2.148 -1.316];
y = sin((x).^2)./exp(x) - 1;
z = -2.286;
Pz = polinomio_lagrange (length(x), x, y, z)
z_real = sin(z^2)/exp(z) - 1
erro = abs(z_real - Pz)

disp('');
x = [-2.564 -2.148 -1.316 -0.9007];
y = sin((x).^2)./exp(x) - 1;
z = -1.732;
Pz = polinomio_lagrange (length(x), x, y, z)
z_real = sin(z^2)/exp(z) - 1
erro = abs(z_real - Pz)

disp('');
x = [-2.564 -2.148 -1.316 -0.9007 0.6236];
y = sin((x).^2)./exp(x) - 1;
z = -0.2079;
Pz = polinomio_lagrange (length(x), x, y, z)
z_real = sin(z^2)/exp(z) - 1
erro = abs(z_real - Pz)
