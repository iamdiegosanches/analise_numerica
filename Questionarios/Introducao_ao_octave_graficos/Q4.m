clear
x = linspace(-10,10,100);
y = cos(3*x) - x.^2;
plot(x,y,'*g')
hold on
y = sin(x.^2) + 4*x;
plot(x,y,'.k')
xlabel('Valores de X');
ylabel('Valores de y');
