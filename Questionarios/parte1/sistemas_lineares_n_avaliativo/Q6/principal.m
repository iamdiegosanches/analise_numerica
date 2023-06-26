clear
clc

A = [1 1 1; -2 1 -2; -0.5 0 1];
b = [78;0;2];

x = sol_decomp_LU (A, b)

# Os outros metodos (Cholesky, Jacobi e Gauss-seidel) nao conseguem resolver
# o sistema linear acima. Portanto a decomposicao LU foi utilizada.
