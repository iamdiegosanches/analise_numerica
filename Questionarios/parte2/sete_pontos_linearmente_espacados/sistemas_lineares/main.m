clear
clc

x = linspace(-0.15, 0.44, 7);
y = 4*(x.^10)*8.*exp(x.^6)*7.*(x.^1)*2.*x.^4;

menor_x = min(x);
maior_x = max(x);
pontos_interp = menor_x + rand(4, 1) * (maior_x - menor_x)

xlin = [x(1) x(end)];
ylin = [y(1) y(end)];

for i = 1 : 4
    [YinterL(i), ~,  ~] = interpolacao_polinomial(xlin, ylin, pontos_interp(i)');
endfor
YinterL

xq = [x(1) x(4) x(end)];
yq = [y(1) y(4) y(end)];

for i = 1 : 4
    [YinterQ(i), ~, ~] = interpolacao_polinomial(xq, yq, pontos_interp(i)');
endfor
YinterQ

