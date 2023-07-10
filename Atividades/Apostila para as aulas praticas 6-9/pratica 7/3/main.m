clear
clc

n = 10;
h = (4-(-2))/(n-1);

x = [-2, -4/3, -2/3, 0, 2/3, 4/3, 2, 8/3, 10/3, 4];
y = [exp(-2), exp(-4/3), exp(-2/3), exp(0), (2/3)*sin(10/3) + 1, (4/3)*sin(20/3) + 1, 2*sin(10) + 1, (8/3)*sin(40/3) + 1, (10/3)*sin(50/3) + 1, 4*sin(20) + 1];
z = linspace(-2, 4, 121);


interpolacao_splines_graf(x, y, z);
disp('O splines cubicos naturais obteve melhor resultado');
