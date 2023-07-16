clear
clc

t = [1 3 5 7 9];
Q = [13.2 6.8 3.5 1.8 0.92];

semilogy(t, Q, '*p:m');
xlabel('Tempo (s)');
ylabel('Carga (Q)');

# Linearizacao
# ln(Q) = ln(Q0) + kt

# Encontrando k e Q0
# y = ax + b
# ln(Q) = y, x = t, a = ln(Q0), b = k
# k = -0.33
# Q0 = 18.488


