clear
clc

f = @(t) (8*sin(240*pi*t));

a = 0;
b = 0.25/60; # Converter de segundos para minutos pois o fluxo e 8L/min
n = 6;

[Integ, Info] = gauss_legendre (a, b, n, f);

fprintf('A quantidade de sangue bombeada e %f L\n', Integ)