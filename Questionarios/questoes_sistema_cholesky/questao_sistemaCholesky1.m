clear
#Faça um programa que verifique se o sistema linear tem solução, caso tenha o programa deve verificar se é possível resolver pelo método proposto
# se sim deve determinar a solução, se não deve informar ao usuário que não é possível resolver o sistema pelo método selecionado.

# Cholesky

#               45.04X1-14.64X2+2.06X3+5.69X4-12.65X5=-11.80
#
#               -14.64X1+39.50X2+3.73X3+5.68X4+12.45X5=14.68
#
#               2.06X1+3.73X2+33.21X3+14.01X4-9.41X5=-14.20
#
#               5.69X1+5.68X2+14.01X3+33.41X4+5.03X5=-7.76
#
#               -12.65X1+12.45X2-9.41X3+5.03X4+40.54X5=-16.57

A = [45.04 -14.64 2.06 5.69 -12.65; -14.64 39.50 3.73 5.68 12.45;2.06 3.73 33.21 14.01 -9.41;5.69 5.68 14.01 33.41 5.03; -12.65 12.45 -9.41 5.03 40.54];
b = [-11.80;14.68;-14.20;-7.76;-16.57];

[A, Det, Info] = Cholesky (A);
L = tril(A);
y = subst_sucess (L, b);
x = subst_retro (L', y')
