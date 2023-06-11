clear
clc
# Para conseguir acessar funções em outras pastas
addpath('D:/Diego/Escola/Engenharia_de_Computacao/05Quinto_Periodo/Analise_numerica/analise_numerica/Atividades/Apostila para as aulas praticas 1-5/pratica 5/malcondicionado');
# A)

A = [3.25 1.625 1.083 0.8125; 1.625 1.083 0.8125 0.65; 1.083 0.8125 0.65 0.5417; 0.8125 0.65 0.5417 0.4643];
b = [3.520; 4.496; 4.008; 3.49];

if malcondicionado(A) ~= 1
  [x, Iter, Info] = gauss_seidel (size(A, 1), A, b, 0.0001, 1000);
  aux = x.+0.01;
  Dif = abs(x - aux)/aux
else
  disp('O sistema e malcondicionado');
endif

# B)

B = [-3 -24 5 -17; -24 5 -2 4; 5 -2 3 -8; -17 4 -8 1];
b = [-152; 31; 64; 11];

if malcondicionado(B) ~= 1
  x = sol_decomp_LU (B, b);
  aux = x.+0.01;
  Dif = abs(x - aux)/aux
else
  disp('O sistema e malcondicionado');
endif



# C)

C = [3 1.5 1 0.75; 1.5 1 0.75 0.6; 1 0.75 0.6 0.5; 0.75 0.6 0.5 0.43];
b = [32; 16.2; 10.85; 8.16];

if malcondicionado(C) ~= 1
  [x, Iter, Info] = gauss_seidel (size(C, 1), C, b, 0.0001, 100);
  aux = x.+0.01;
  Dif = abs(x - aux)/aux
else
  disp('O sistema e malcondicionado');
endif

# D)

D = [0.01 0.4 0.125 1; 0.4 0.25 2 0.32; 0.125 2 0.5 1.02; 1 0.32 1.02 0.045];
b = [2.0685; -0.085; 2.4425; 0.1424];

if malcondicionado(D) ~= 1
  x = sol_decomp_LU (D, b);
  aux = x.+0.01;
  Dif = abs(x - aux)/aux
else
  disp('O sistema e malcondicionado');
endif

# E)

E = [3 4; -9 -12];
b = [1; 4];

if malcondicionado(E) ~= 1
  [x, Iter, Info] = gauss_seidel (size(E, 1), E, b, 0.0001, 100);
  aux = x.+0.01;
  Dif = abs(x - aux)/aux
else
  disp('O sistema e malcondicionado');
endif

