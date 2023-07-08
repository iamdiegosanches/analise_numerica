clear
clc

n = 5;
v = 1;
p = 2;
ii = 1;

disp('');
disp('Tabela 1');
x = [8.1710;6.8664;1.3960;0.8992;-2.7101];
y = [39.2053;30.7299;11.2640;2.8130;-4.1482];
[b, r2, s2, AICc, Info] = regressao_linear_en (n, v, p, ii, x, y)
disp('Coeficientes da equacao de regressao')
b
printf('Variancia residual: %f \n', s2);
printf('Coeficiente de determinacao: %f \n', r2);

disp('');
disp('Tabela 2');
x = [7.6784;3.1249;2.1721;1.3425;-5.2367];
y = [0.2369;-1.2767;-1.2050;-2.8443;-8.4783];
[b, r2, s2, AICc, Info] = regressao_linear_en (n, v, p, ii, x, y)
disp('Coeficientes da equacao de regressao')
b
printf('Variancia residual: %f \n', s2);
printf('Coeficiente de determinacao: %f \n', r2);

disp('');
disp('Tabela 3');
x = [3.7796;1.8787;-1.0432;-4.1964;-6.7271];
y = [0.3356;0.0450;0.0535;-0.0329;-0.0214];
[b, r2, s2, AICc, Info] = regressao_linear_en (n, v, p, ii, x, y)
disp('Coeficientes da equacao de regressao')
b
printf('Variancia residual: %f \n', s2);
printf('Coeficiente de determinacao: %f \n', r2);

disp('');
disp('Tabela 4');
x = [1.2867;-0.5849;-0.8381;-0.9192;-4.1909];
y = [16.4650;23.2295;22.8824;43.1092;77.7867];
[b, r2, s2, AICc, Info] = regressao_linear_en (n, v, p, ii, x, y);
disp('Coeficientes da equacao de regressao')
b
printf('Variancia residual: %f \n', s2);
printf('Coeficiente de determinacao: %f \n', r2);

