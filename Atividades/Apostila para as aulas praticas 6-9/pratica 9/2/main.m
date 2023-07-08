clear
clc

# Letra A
x1 = [386;446;512;401;457;458;301;484;517;503;535;553;372;328;408;491;527;444; ...
      623;596;463;389;547;415];

x2 = [4.015;3.806;5.309;4.262;4.296;4.097;3.213;4.809;5.237;4.732;7.413;2.921; ...
      3.977;4.428;3.964;4.582;5.582;3.450;5.079;5.735;4.269;3.708;5.387;4.161];

y = [52.95;71.66;85.65;63.69;72.81;68.44;52.46;70.77;82.03;74.39;70.84;54.08; ...
    62.98;72.30;58.99;79.38;94.44;59.74;90.50;93.24;69.33;53.71;98.18;66.80];
x = [x1 x2];
n = 24;
v = 2;
p = 3;
ii = 1;

[b, r2, s2, AICc, Info]  = regressao_linear_en (n, v, p, ii, x, y)
fprintf('y = %f + %f*x + %f*x^2 \n', b(1), b(2), b(3));

# Letra B
disp('Estimativa dos custos de distribuicao do deposito mensal');
y = b(1) + b(2)*400 + b(3)*4500


