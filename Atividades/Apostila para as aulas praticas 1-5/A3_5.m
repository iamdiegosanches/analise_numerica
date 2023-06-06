clear
# Resolucao da atividade 3.5

A = [5 -2 2; 3 2 4; 4 -3 1];
b = [2;-1;3];
[A, Det, Pivot] = decomposicao_LU(A);
L = eye(size(A)) + tril(A, -1);
U = triu(A);
y = subst_sucess(L, b);
disp('Solucao da letra A sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra A com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - A\b, inf)/norm(x, inf)

B = [1 1 1; 1 -2 -2; 2 1 1];
b = [2;-1;3];
[B, Det, Pivot] = decomposicao_LU(B);
L = eye(size(B)) + tril(B, -1);
U = triu(B);
y = subst_sucess(L, b);
disp('Solucao da letra B sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra B com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - B\b, inf)/norm(x, inf)

C = [1 1 6; 1 1.5 2; 6 2 0.5];
b = [11;4.5;14];
[C, Det, Pivot] = decomposicao_LU(C);
L = eye(size(C)) + tril(C, -1);
U = triu(C);
y = subst_sucess(L, b);
disp('Solucao da letra C sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra C com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - C\b, inf)/norm(x, inf)

D = [3 2 6; 12 8 24; 6 4 5];
b = [1;4;10];
[D, Det, Pivot] = decomposicao_LU(D);
L = eye(size(D)) + tril(D, -1);
U = triu(D);
y = subst_sucess(L, b);
disp('Solucao da letra D sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra D com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - D\b, inf)/norm(x, inf)

E = [4 5 7; 2 4 3; 6 3 8];
b = [5;3;8];
[E, Det, Pivot] = decomposicao_LU(E);
L = eye(size(E)) + tril(E, -1);
U = triu(E);
y = subst_sucess(L, b);
disp('Solucao da letra E sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra E com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - E\b, inf)/norm(x, inf)

F = [3 7 8 1; 4 5 2 8; 6 3 2 5; 2 4 1 3];
b = [3;8;5;9];
[F, Det, Pivot] = decomposicao_LU(F);
L = eye(size(F)) + tril(F, -1);
U = triu(F);
y = subst_sucess(L, b);
disp('Solucao da letra F sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra F com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - F\b, inf)/norm(x, inf)

G = [1 2 -3; 3 -1 5; 4 1 2];
b = [4;2;-2];
[G, Det, Pivot] = decomposicao_LU(G);
L = eye(size(G)) + tril(G, -1);
U = triu(G);
y = subst_sucess(L, b);
disp('Solucao da letra G sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra G com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - G\b, inf)/norm(x, inf)

H = [1 1 1; 2 3 2; 2 3 2];
b = [2;5;(sqrt(3)+1)];
[H, Det, Pivot] = decomposicao_LU(H);
L = eye(size(H)) + tril(H, -1);
U = triu(H);
y = subst_sucess(L, b);
disp('Solucao da letra H sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra H com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - H\b, inf)/norm(x, inf)

I = [3 1 5; 1 10 2; 5 2 11];
b = [7;3;5];
[I, Det, Pivot] = decomposicao_LU(I);
L = eye(size(I)) + tril(I, -1);
U = triu(I);
y = subst_sucess(L, b);
disp('Solucao da letra I sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra I com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - I\b, inf)/norm(x, inf)

J = [12 -5 4 -1 8 -7; -5 25 7 4 9 -32; 4 7 -6 3 -3 4; -1 -4 3 17 5 2; 8 9 -3 5 1 15; -7 -32 4 2 15 23];
b = [0;-3;14;6;4;3];
[J, Det, Pivot] = decomposicao_LU(J);
L = eye(size(J)) + tril(J, -1);
U = triu(J);
y = subst_sucess(L, b);
disp('Solucao da letra J sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra J com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - J\b, inf)/norm(x, inf)

K = [-3 -24 5 -17; -24 5 -2 4; 5 -2 3 -8; -17 4 -8 1];
b = [-152;31;64;11];
[K, Det, Pivot] = decomposicao_LU(K);
L = eye(size(K)) + tril(K, -1);
U = triu(K);
y = subst_sucess(L, b);
disp('Solucao da letra K sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra K com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - K\b, inf)/norm(x, inf)

K = [20 -7 -9 -2 2; -7 14 6 2 -5; -9 6 25 4 -3; -2 2 4 6 -4; 2 -5 -3 -4 13];
b = [92;63;-235;94;-61];
[K, Det, Pivot] = decomposicao_LU(K);
L = eye(size(K)) + tril(K, -1);
U = triu(K);
y = subst_sucess(L, b);
disp('Solucao da letra l sem pivot');
x = subst_retro(U, y')
disp('Solucao da letra l com pivot');
y = subst_sucess_pivotal (L, b, Pivot);
x = subst_retro(U, y')
disp('Verificacao do erro absoluto');
norm(x - K\b, inf)/norm(x, inf)

