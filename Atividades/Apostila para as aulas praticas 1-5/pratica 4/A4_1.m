clear

#a

A = [7 1 5; 1 10 2; 5 20 11];
b = [7;3;5];
disp('Jacobi');
[x, Iter, Info] = jacobi (3, A, b, 10^(-4), 100)
disp('Gauss-seidel');
[x, Iter, CondErro] = gauss_seidel (3, A, b, 10^(-4), 100)

#b

B = [4 1 5 3; 4 5 2 1; 7 6 10 5; 3 9 1 5];
b = [5;7;6;3];
disp('Jacobi');
[x, Iter, Info] = jacobi (4, B, b, 10^(-4), 100)
disp('Gauss-seidel');
[x, Iter, CondErro] = gauss_seidel (4, B, b, 10^(-4), 100)

#c

C = [5 3 1; 1.5 10 1; 0.7 2.3 2];
b = [10;2;5];
disp('Jacobi');
[x, Iter, Info] = jacobi (3, C, b, 10^(-4), 100)
disp('Gauss-seidel');
[x, Iter, CondErro] = gauss_seidel (3, C, b, 10^(-4), 100)

#d

D = [21 12 5; 4 45 13; 9 14 32];
b = [17;11;21];
disp('Jacobi');
[x, Iter, Info] = jacobi (3, D, b, 10^(-4), 100)
disp('Gauss-seidel');
[x, Iter, CondErro] = gauss_seidel (3, D, b, 10^(-4), 100)

#e

E = [0.3 0.07 0.1; 0.014 0.05 0.0023; 0.09 0.05 0.18];
d =  [0.15; -1.4; -0.31];
disp('Jacobi');
[x, Iter, Info] = jacobi (3, E, b, 10^(-4), 100)
disp('Gauss-seidel');
[x, Iter, CondErro] = gauss_seidel (3, E, b, 10^(-4), 100)
