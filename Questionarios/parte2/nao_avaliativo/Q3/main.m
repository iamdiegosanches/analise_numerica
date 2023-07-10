clear
clc

hb = [495 388 311 269 229 197 146 131 111];
d = [2.75 3.10 3.45 3.7 4 4.3 4.95 5.2 5.6];

# Removido o setimo valor da tabela original

plot(d, hb, 'o')
title('Grafico  de dispersao');

diametro = input('Digite o diametro do penetrador: ');
AICcant = -Inf;
r2ant = 0;
for p = 2 : 9
  [b, r2, s2, AICc, Info]  = regressao_linear_en (9, 1, 2, 1, d', hb');
  if AICc > AICcant && r2 > r2ant
    disp('O ajuste melhorou');
    AICcand = AICc;
    r2ant = r2;
  endif
endfor
r2
dureza = b(1) + b(2)*diametro

