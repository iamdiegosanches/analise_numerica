% Limpar a área de trabalho
clear

% Subplot 1
subplot(3,2,1)
x = linspace(-8,20,100);
y = 2*x.^2 + 1;
plot(x,y)
title('y = 2*x^2 + 1')

% Subplot 2
subplot(3,2,2)
x = linspace(-12,14,50);
y = (cos(x)).^2 + (sin(x)).^2;
plot(x,y)
title('y = cos(x)^2 + sin(x)^2')

% Subplot 3
subplot(3,2,3)
x = linspace(-20,2,10);
y = exp(x.^3 + 5);
plot(x,y)
title('y = exp(x^3 + 5)')

% Subplot 4
subplot(3,2,4)
x = linspace(10,11,200);
y = log(x.^5 + 2)/log(3);
plot(x,y)
title('y = log3(x^5 + 2)')

% Subplot 5
subplot(3,2,5)
x = linspace(1,13,50);
y = cos(3*x.^3 + pi) + x.^3;
plot(x,y)
title('y = cos(3*x^3 + pi) + x^3')

