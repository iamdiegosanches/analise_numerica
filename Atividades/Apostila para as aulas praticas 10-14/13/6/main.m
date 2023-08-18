clear
clc

f1=@(x)((x.^3)-3*(x.^2)-10*x+24);
f2=@(x)((x.^4)-2*(x.^3)-13*(x.^2)+14*x+24);
f3=@(x)(4*(x.^3)+25*(x.^2)+14*x-1);

# coeficientes das funcoes

c1=[1 -3 -10 24];
c2=[1 -2 -13 14 24];
c3=[4 25 14 -1];

subplot(2,2,1),[L1]=limites_raizes_grafico(c1,f1);
title('funcao : x^3-3*x^2-10*x+24');
subplot(2,2,2),[L2]=limites_raizes_grafico(c2,f2);
title('funcao : x^4-2*x^3-13*x^2+14*x+24');
subplot(2,2,3),[L3]=limites_raizes_grafico(c3,f3);
title('funcao : 4*x^3+25*x^2+14*x-1');

# limites das funcoes
L1
L2
L3
