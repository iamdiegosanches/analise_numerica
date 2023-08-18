clear
clc


f1 = @(x,y)((x.^2)+y);
a = 0;
b = 2;
y0 = 1;
[T, Y] = ode45(f1, [a, b], y0)
plot(T,Y);
hold on

f2 = @(x,y)(y.*(x-y));
a = 0;
b = 1.5;
y0 = 1
[T, Y] = ode45(f2, [a, b], y0)
plot(T,Y);

f3 = @(x,y)(-2*x.*y);
a = 0;
b = 0.5;
y0 = 1;
[T, Y] = ode45(f3, [a, b], y0)
plot(T,Y);

x = linspace(0, 2, 50);

ya = (x.^2 + 2*x + 1)/3
plot(x, ya);

yb = (x.^2 - x + 2)/3
plot(x, yb);

yc = (x.^2 - x + 1)/2
plot(x, yc);

# A aproximacao nao foi muito proxima dos graficos da equacao da reta
