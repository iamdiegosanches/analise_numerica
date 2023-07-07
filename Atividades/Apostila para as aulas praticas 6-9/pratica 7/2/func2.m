clear
clc

x1 = [0.5 1 4.6 5.7 8.2];
y1 = 5*x1.^2 + 3*x1 - 10;
z1 = [0.250 1.56 4.98 7.37];
figure(1);
interpolar_splines (x1, y1, z1)

x2 = [-1.5 0.5 1.5 4.76 7.34];
y2 = 5*x2.^2 + 3*x2 - 10;
z2 = [0 1.34 2.98 6.67];
figure(2);
interpolar_splines (x2, y2, z2)

x3 = [-2 -1.5 0 2.0 6.7];
y3 = 5*x3.^2 + 3*x3 - 10;
z3 = [1.5 -1.3 0.43 5.38];
figure(3);
interpolar_splines (x3, y3, z3)

x4 = [-4 -2.5 2 3 4];
y4 = 5*x4.^2 + 3*x4 - 10;
z4 = [1 -3.87 1.35 3.56];
figure(4);
interpolar_splines (x4, y4, z4)
