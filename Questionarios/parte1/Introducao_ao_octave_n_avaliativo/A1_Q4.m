clear
clc

U = input("Insira a matriz U: ");
V = input("Insira a matriz V: ");
W = input("Insira a matriz W: ");

if (size(U) == size(V) && size(V) == size(W))
    resultado = dot(U, cross(V, W));
    disp(resultado)
else
    disp("Erro: As matrizes devem ter o mesmo tamanho")
endif
