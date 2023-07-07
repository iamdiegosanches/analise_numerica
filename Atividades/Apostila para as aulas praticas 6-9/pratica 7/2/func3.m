clear
clc

x1 = [-3.11 -2.196 -0.43 1.9 2.65];
y1 = 4./exp(5*x1.^2);
z1 = [-2 -2.35 -0.025 2.40];
figure(1);
interpolar_splines (x1, y1, z1)

x2 = [-3.11 -2.5 2.15 4.13 6.24];
y2 = 4./exp(5*x2.^2);
z2 = [1.15 2.16 5.3 6.15];
figure(2);
interpolar_splines (x2, y2, z2)

x3 = [-3.11 -2 0 3.15 4.52];
y3 = 4./exp(5*x3.^2);
z3 = [-1.65 -2.12 0.42 2.35];
figure(3);
interpolar_splines (x3, y3, z3)

x4 = [-4.53 -2.56 -1.76 3.6 5.13];
y4 = 4./exp(5*x4.^2);
z4 = [2.25 -3.2 1.63 4.79];
figure(4);
interpolar_splines (x4, y4, z4)
