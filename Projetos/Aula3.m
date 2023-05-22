# Plots de graficos

x = [2 5 6 6.5 7];
y = [-15 18 19 22 30];

# Qualquer conjunto x,y na ordem que aparece
plot(x, y)


# Exercicio: faca um grafico dos valores de x variando de -1 ate 10 com 19 pontos e y variando de 5.01 ate 5.02 com 19 pontos

x = linspace(-1, 10, 19);
y = linspace(5.01, 5.02, 19);

plot(x, y)
hold on
# Varias curvas no mesmo grafico e na mesma figura

# Grafico de uma funcao
# Exercicio: faca o grafico de uma funcao -5x + 4

x = linspace(-10, 10, 100);
y = -5*x + 4;

plot(x, y)

#Exercicio: Faca o grafico da funcao -0.5x^3 + 2*×^2 - 5

x = linspace(-10, 10, 100);
# Usar o ponto porque queremos cada valor de x elevado a 3 e 2
y = (-0.5)(x.^3) + (2)(x.^2) - 5;

# Mudando a cor dos pontos e o que representam eles r g b c y m k são as cores básicas
# O traço manda ligar os pontos
plot(x, y, '-*r')

# Exercicio: faca um grafico que contenha as curvas para as funcoes -4x^3 + 3x e -×^2 + 5 no intervalo de -0.1 até 0.05 com adição de 3xemplo de subplot
hold off

x = linspace (-0.1, 0.05, 50);
f1 = (-4)*(x.^3) + 3*x;
f2 = -x.^2 + 5;
#subplot(2, 2, 1);
plot(x, f1)
hold on
plot(x, f2)
hold off
# Outras formas
#subplot(2, 2, 3);
plot(x, f1, f2)
#subplot(2, 2, 4)
plot(x, f1, x, f2)

# Varios graficos na mesma figura se usa o subplot

# Exercicio: Imprima as funcoes no mesmo grafico e os graficos na mesma figura para as opções abaixo
# a)
subplot(1,3,1)
x = linspace(-0.1, 0.5, 200);
f1 = x.^4 - 5;
plot(x, f1, '*g')
x = linspace(-0.2, 0, 200);
f2 = 3*(x.^2) - 15;
hold on
plot(x, f2, '*r')

subplot(1,3,2)
x = linspace(-7, 5, 200);
f1 = x.^5 - 3*x.^2;
plot(x, f1, '*g')
f2 = 3*x - x.^3;
hold on
plot(x, f2, '*r')

subplot(1,3,3)
x = linspace(-1, 1, 200);
f1 = sin(x.^2) + 1;
plot(x, f1, '*g')
f2 = cos(x.^2);
hold on
plot(x, f2, '*r')

# figure e usado pra criar novas figuras
