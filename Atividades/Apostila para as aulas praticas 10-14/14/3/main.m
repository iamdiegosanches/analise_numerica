clear
clc

# calculo das funcoes analiticas

f1 = @(x, y)(sqrt(x));
y0 = 0;
a = 0;
b = 2;
[T, Y] = ode45(f1, [a, b], y0)
plot(T,Y)

f2=@(x,y)((x.^2)+(y.^2));
y1 = 0;
a = 1;
b = 2;
[T, Y] = ode45(f2, [a, b], y1)
hold on
plot(T,Y)

f3=@(x,y)(x.*y);
y0 = 1;
a = 0;
b = 1;
[T, Y] = ode45(f3, [a, b], y0)
plot(T,Y)


