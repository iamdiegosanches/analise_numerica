clear
clc

x = linspace(-10, 10, 100);

subplot(2,2,1);
y1 = (1 - 17*x)/16;
y2 = (-13 + 3*x)/16;
plot(x, y1);
hold on;
plot(x, y2);
title('Sistema 1');

subplot(2,2,2);
y3 = (-15 - 10*x)/17;
y4 = (9 - 5*x)/11;
plot(x, y3);
hold on;
plot(x, y4);
hold off;
title('Sistema 2');

subplot(2,2,3);
y5 = (22 - 8*x)/10;
y6 = (-13 - 2*x)/4;
plot(x, y5);
hold on;
plot(x, y6);
hold off;
title('Sistema 3');

subplot(2,2,4);
y7 = (12 + x)/-1;
y8 = (-14 - 12*x)/4;
plot(x, y7);
hold on;
plot(x, y8);
hold off;
title('Sistema 4');

A = [17, 16; -3, 16];
b1 = [1; -13];
x1 = sol_decomp_LU(A, b1)

B = [10, 17; 5, 11];
b2 = [-15; 9];
x2 = sol_decomp_LU(B, b2)

C = [8, 10; 2, 4];
b3 = [22; -13];
x3 = sol_decomp_LU(C, b3)

D = [1, -1; 12, 4];
b4 = [12; -14];
x4 = sol_decomp_LU(D, b4)

% Descobrir se o cada sistema tem solucao



