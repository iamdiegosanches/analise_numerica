clear
A = [-1 7 -1; -3 5 10; 10 10 -5];
b = [-4;-8;-2];
[A, det, pivot] = decomposicao_LU(3, A);
L = eye(size(A)) + tril(A, -1);
U = triu(A);
y = subst_sucess_pivotal(3,A,b,pivot)
x = subst_retro(U, y')'
