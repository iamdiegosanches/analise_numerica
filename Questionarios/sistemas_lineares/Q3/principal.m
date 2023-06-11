clear
clc

A = [37 3 10; -5 30 -10; -2 -5 18];
b = [10;5;9];

n = 3;
Toler = 10^(-9);
IterMax = 50;
[x, Iter, Info] = jacobi (n, A, b, Toler, IterMax);
disp('X');
disp(x);
