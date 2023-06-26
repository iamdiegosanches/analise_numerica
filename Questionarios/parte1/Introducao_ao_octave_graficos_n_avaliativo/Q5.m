clear
x = linspace(-10, 10, 100);
colors = ['r', 'g', 'b', 'c', 'm', 'y', 'k', 'w'];
subplot(1,2,1);
hold on
for i = 1:4
    y = randi([-50,50])*x.^4 + randi([-50,50])*x.^3 ...
    + randi([-50,50])*x.^2 + randi([-50,50])*x;
    plot(x, y, colors(i))
endfor
title('4 Funções Polinomiais Aleatórias (Gráfico 1)');

subplot(1,2,2);
hold on
for i = 1:4
    y = randi([-50,50])*x.^4 + randi([-50,50])*x.^3 ...
    + randi([-50,50])*x.^2 + randi([-50,50])*x;
    plot(x, y, colors(i))
endfor
title('4 Funções Polinomiais Aleatórias (Gráfico 2)');

hold off

