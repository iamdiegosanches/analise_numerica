clear
clc

t = [0;2;4;6;8;10];
c = [1.58;2.93;5.41;10;18.48;34.15];

# realizando a linearizacao
# ln(c) = ln(c0)M/2000 + ln(c0)t/5

y = log(c);

# solucionando a equacao da reta resultante
# ln(c) = ln(c0)M/2000 + ln(c0)t/5
# y = ax + b
# y = ln(c)
x0 = t(1);
x1 = t(2);
y1 = y(1);
y2 = y(2);
# a = ln(c0)/5
# b = ln(c0)*M/2000
# ln(c0) = 900/M
# Solucionando a equacao da reta utilizando os dois primeiros pontos
# 0.45 = ln(c0)M/2000
# 1.075 = ln(c0)M/2000 + ln(c0)2/5
# 1.075 = 900/M * M/2000 + 900/M * 2/5
M = ((y2-y1)/360)^(-1)
c0 = exp(900/M)

r2Ant = -inf;
AICcant = 0;
for p = 2 : 6
   try
     [b, r2, s2, AICc, Info]  = regressao_linear_dvs (6, 1, p, 1, t, y);
   catch
     break;
   end_try_catch
   if r2 > r2Ant && AICc > AICcant
     AICcant = AICc;
     r2Ant = r2;
     bRes = b;
   endif
endfor
bRes