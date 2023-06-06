clear
# Resolvendo exercicio 3.2
# a)
A = [2 -3; 0 5];
b = [-1; 4];
y = subst_retro(A,b)'

# b)
A = [4 -5 2; 0 3 -1; 0 0 2];
b = [1;5;-2];
x = subst_retro(A, b)

# c)
A = [4 1 -4 1; 0 -2 8 -3; 0 0 9 -4; 0 0 0 -10];
b = [0.5;7;3;30];
x = subst_retro(A, b)

