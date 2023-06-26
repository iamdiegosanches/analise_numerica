clear
clc

A = [19.50 4.99 -5.82 18.22 -1.75; ...
     2.61 -8.01 -13.70 2.67 7.89; ...
     9.21 14.54 -2.39 18.56 -4.85; ...
     18.54 15.22 17.75 4.66 -12.57; ...
     -3.11 -13.93 -4.85 11.24 11.44];
b = [10.91;14.43;6.21;12.33;8.92];
Toler = 10^(-9);
IterMax = 100;
n = 4;
[x, Iter, Info] = gauss_seidel (n, A, b, Toler, IterMax);

if Info == 1
  disp('O metodo de Gauss-Seidel nao convergiu dentro do numero maximo de iteracoes.');
  disp('Nao e possivel resolver o sistema pelo metodo selecionado');
else
  disp('X: ');
  disp(x);
endif
