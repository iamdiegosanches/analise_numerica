%10.2

%A)
x = linspace(-1, 2, 1000);
f = @(x)-3*x.^3 + 1.5*x.^2 + 5;

[Integral, Info] = Newton_Cotes(-1, 2, 1, 18, f)
[Integral, Info] = Newton_Cotes(-1, 2, 2, 18, f)
[Integral, Info] = Newton_Cotes(-1, 2, 3, 18, f)

subplot(2, 2, 1);
plot(x, f(x));
hold on;
disp('-');

%Dúvida: 1 e 18 pontos?

%B)
x = linspace(-0.5, 0.5, 1000);
f = @(x)(4*x.^2)/(e.^(5*x));

[Integral, Info] = Newton_Cotes(-0.5, 0.5, 3, 32, f)
[Integral, Info] = Newton_Cotes(-0.5, 0.5, 4, 32, f)
[Integral, Info] = Newton_Cotes(-0.5, 0.5, 5, 32, f)

subplot(2, 2, 2);
plot(x, f(x));
hold on;
disp('-');

%C) Erro na linha 33 e na linha 40
x = linspace(1, 7, 1000);
f = @(x)(x.^(-1))*20*sin(2*x);

[Integral, Info] = Newton_Cotes(1, 7, 1, 15, f)
[Integral, Info] = Newton_Cotes(1, 7, 2, 15, f)
[Integral, Info] = Newton_Cotes(1, 7, 3, 15, f)

subplot(2, 2, 3);
plot(x, f(x));
hold on;
disp('-');















