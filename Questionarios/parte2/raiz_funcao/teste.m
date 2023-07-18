% Dados tabelados
x = [1 2 3 4 5 6];
fx = [0.841 0.909 0.141 -0.757 -0.959 -0.279];

% Determinar a parábola usando polyfit
grau_parabola = 2; % grau da parábola é 2 (pois é uma parábola)
coeficientes = polyfit(x, fx, grau_parabola)

% Coeficientes da parábola: coeficientes(1)*x^2 + coeficientes(2)*x + coeficientes(3)

% Encontrar a raiz da parábola (raiz da função interpoladora)
raiz_parabola = roots(coeficientes);

% Plotar a parábola e os pontos tabelados
x_plot = linspace(min(x), max(x), 100); % Pontos para plotar a parábola
y_plot = polyval(coeficientes, x_plot);

figure;
hold on;
plot(x, fx, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'b'); % Pontos tabelados
plot(x_plot, y_plot, 'r', 'LineWidth', 2); % Parábola interpoladora
xlabel('x');
ylabel('f(x)');
title('Interpolação por Parábola');
legend('Pontos Tabelados', 'Parábola Interpoladora');
grid on;
hold off;

