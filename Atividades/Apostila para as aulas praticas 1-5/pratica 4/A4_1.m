clear

#a

A = [7 1 5; 1 10 2; 5 20 11];
b = [7;3;5];
disp('Jacobi');
[x, Iter, Info] = jacobi (3, A, b, 10^(-4), 100)
disp('Gauss-seidel');
[x, Iter, CondErro] = gauss_seidel (3, A, b, 10^(-4), 100)
#b
