clear

#a

A = [7 1 5; 1 10 2; 5 20 11];
b = [7;3;5];
disp('SOR');
# Varios omegas
[x, Iter, CondErro] = SOR (A, b, 1, 10^(-4), 100)
[x, Iter, CondErro] = SOR (A, b, 2, 10^(-4), 100)
[x, Iter, CondErro] = SOR (A, b, 13, 10^(-4), 100)

#b

B = [4 1 5 3; 4 5 2 1; 7 6 10 5; 3 9 1 5];
b = [5;7;6;3];
disp('SOR');
# Varios omegas
[x, Iter, CondErro] = SOR (B, b, 1, 10^(-4), 100)
[x, Iter, CondErro] = SOR (B, b, 3, 10^(-4), 100)
[x, Iter, CondErro] = SOR (B, b, 4, 10^(-4), 100)

#c

C = [5 3 1; 1.5 10 1; 0.7 2.3 2];
b = [10;2;5];
disp('SOR');
# Varios omegas
[x, Iter, CondErro] = SOR (C, b, 1, 10^(-4), 100)
[x, Iter, CondErro] = SOR (C, b, 5, 10^(-4), 100)
[x, Iter, CondErro] = SOR (C, b, 10, 10^(-4), 100)

#d

D = [21 12 5; 4 45 13; 9 14 32];
b = [17;11;21];
disp('SOR');
# Varios omegas
[x, Iter, CondErro] = SOR (D, b, 1, 10^(-4), 100)
[x, Iter, CondErro] = SOR (D, b, 2, 10^(-4), 100)
[x, Iter, CondErro] = SOR (D, b, 3, 10^(-4), 100)

#e

E = [0.3 0.07 0.1; 0.014 0.05 0.0023; 0.09 0.05 0.18];
b =  [0.15; -1.4; -0.31];
disp('SOR');
# Varios omegas
[x, Iter, CondErro] = SOR (E, b, 1, 10^(-4), 100)
[x, Iter, CondErro] = SOR (E, b, 2, 10^(-4), 100)
[x, Iter, CondErro] = SOR (E, b, 3, 10^(-4), 100)

