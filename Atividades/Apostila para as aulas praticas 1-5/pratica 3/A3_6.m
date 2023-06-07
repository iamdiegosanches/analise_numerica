clear

A = [5 -2 2; 3 2 4; 4 -3 1];
b = [2;-1;3];

x = sol_decomp_LDL (A, b)
x = sol_Cholesky (A, b)
x = sol_decomp_LU (A, b)

B = [1 1 1; 1 -2 -2; 2 1 1];
b = [2;-1;3];

x = sol_decomp_LDL (B, b)
x = sol_Cholesky (B, b)
x = sol_decomp_LU (B, b)

C = [1 1 6; 1 1.5 2; 6 2 0.5];
b = [11;4.5;14];

x = sol_decomp_LDL (C, b)
x = sol_Cholesky (C, b)
x = sol_decomp_LU (C, b)

D = [3 2 6; 12 8 24; 6 4 5];
b = [1;4;10];

x = sol_decomp_LDL (D, b)
x = sol_Cholesky (D, b)
x = sol_decomp_LU (D, b)

E = [4 5 7; 2 4 3; 6 3 8];
b = [5;3;8];

x = sol_decomp_LDL (E, b)
x = sol_Cholesky (E, b)
x = sol_decomp_LU (E, b)

F = [3 7 8 1; 4 5 2 8; 6 3 2 5; 2 4 1 3];
b = [3;8;5;9];

x = sol_decomp_LDL (F, b)
x = sol_Cholesky (F, b)
x = sol_decomp_LU (F, b)

G = [1 2 -3; 3 -1 5; 4 1 2];
b = [4;2;-2];

x = sol_decomp_LDL (G, b)
x = sol_Cholesky (G, b)
x = sol_decomp_LU (G, b)

H = [1 1 1; 2 3 2; 2 3 2];
b = [2;5;(sqrt(3)+1)];

x = sol_decomp_LDL (H, b)
x = sol_Cholesky (H, b)
x = sol_decomp_LU (H, b)

I = [3 1 5; 1 10 2; 5 2 11];
b = [7;3;5];

x = sol_decomp_LDL (I, b)
x = sol_Cholesky (I, b)
x = sol_decomp_LU (I, b)

J = [12 -5 4 -1 8 -7; -5 25 7 4 9 -32; 4 7 -6 3 -3 4; -1 -4 3 17 5 2; 8 9 -3 5 1 15; -7 -32 4 2 15 23];
b = [0;-3;14;6;4;3];

x = sol_decomp_LDL (J, b)
x = sol_Cholesky (J, b)
x = sol_decomp_LU (J, b)

K = [-3 -24 5 -17; -24 5 -2 4; 5 -2 3 -8; -17 4 -8 1];
b = [-152;31;64;11];

x = sol_decomp_LDL (K, b)
x = sol_Cholesky (K, b)
x = sol_decomp_LU (K, b)

K = [20 -7 -9 -2 2; -7 14 6 2 -5; -9 6 25 4 -3; -2 2 4 6 -4; 2 -5 -3 -4 13];
b = [92;63;-235;94;-61];

x = sol_decomp_LDL (K, b)
x = sol_Cholesky (K, b)
x = sol_decomp_LU (K, b)
