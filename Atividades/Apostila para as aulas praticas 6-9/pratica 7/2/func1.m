clear
clc

x1 = [-8.154 -4.919 -1.45 0];
y1 = exp(x1./2).*x1.^2 - 10;
z1 = [-6 -4.53 -0.67 2.5];
figure(1);
interpolar_splines (x1, y1, z1)

x2 = [-6.166 -3.950 -1.871 1.23];
y2 = exp(x2./2).*x2.^2 - 10;
z2 = [-4.76 -2.5 1.45 3.76];
figure(2);
interpolar_splines (x2, y2, z2)

x3 = [-1.455 0 0.762 1.178];
y3 = exp(x3./2).*x3.^2 - 10;
z3 = [-0.83 0.54 1.96 3.35];
figure(3);
interpolar_splines (x3, y3, z3)


#####
# O metodo que apresentou a melhor resposta foi
