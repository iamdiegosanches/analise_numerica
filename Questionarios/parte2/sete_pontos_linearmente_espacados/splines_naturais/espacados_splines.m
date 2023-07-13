clear
clc

x = linspace(-0.17, 0.52, 7);
y = 7*cos(x.^9).*10.*cos(x.^6)+1*(x.^1).*10.*exp(x.^2);

# Pontos aleatorios para a interpolacao
pontos_interp = min(x) + rand(4, 1) * (max(x) - min(x))


[sz, Info] = splines_avaliar (7, x, y, 4, pontos_interp', 0)

