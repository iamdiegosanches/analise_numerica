clear
clc

x = [14;6;3;6;7;6;7;4;8;7;6;4];
y = [10;26;41;29;27;27;19;28;19;31;29;33];

# Grafico dispercao
plot(x, y, 'om');
hold on;

n = size(x, 1);
v = 1;
ii = 1;
AICcant = -inf;
r2ant = 0;
bRes = [];
for p = 2 : n-1
  try
    [b, r2, s2, AICc, Info]  = regressao_linear_en (n, v, p, ii, x, y);
  catch
    break;
  end_try_catch
  if AICc > AICcant && r2 > r2ant
    disp('Melhorou');
    AICcant = AICc;
    r2ant = r2;
    bRes = b;
  endif
endfor

xp = linspace(min(x), max(x), 100);
yp = zeros(size(xp));
m = length(bRes);
for i = m-1 : -1 : 0
  yp = yp + bRes(i+1)*xp.^(i);
endfor

plot(xp, yp);

AICcant = AICc
r2ant = r2

