clear
A = [14 10 9;10 -16 -8;9 -8 -14];
A = Cholesky(3, A);
b = [-5;-6;-9];
L = tril(A);
y = subst_sucess(L, b);
x = subst_retro(L', y')

# A matriz nao e definida positiva entao o metodo de Cholesky nao pode ser aplicado.
