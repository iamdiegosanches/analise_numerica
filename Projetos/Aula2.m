# Vetores
vet1 = [1.9 2.3 4 5 6 7 8 9];
vet2 = [5;6;7;8;9;-1;-8];

# Produto Vetorial
produto = prod(vet1,vet2);

# Outra forma de declarar um vetor
# valor inicial : passo : valor final
vet3 = 100 : 100: 1000;

# Exercicio criar um vetor de 100 a 1000 com 15 elementos
# entre esses dois valores
vi = 100;
vf = 1000;
n_elementos = 14;
passo = (vf-vi)/(n_elementos-1);

vet = vi : passo : vf;

# A função abaixo faz isso automaticamente
 n_elementos = 15;
vet = linspace(vi,vf,n_elementos);

# Agora usando matrizes
matriz = [1 2 3 4;5 6 7 8;9 10 11 12;13 14 15 16];

# Programa que pegue os elementos da diagonal principal
# e faça eles valores serem 1

# Primeiro jeito
for i = 1 : size(matriz,1)
    for j = 1: size(matriz,2)
         if i == j
             matriz(i,j) = 1;
         endif
    endfor
endfor

# "length" retorna o maior tamanho da matriz, seja coluna ou linha
# Exemplo: uma matriz 2x5 retorna 5
matriz ;

# Segundo jeito: usando somente um for
for i = 1 : size(matriz,1)
    matriz(i,i) = 1;
endfor

matriz;

# outro jeito de criar matriz
# Cria valores aleatorios de 0 a 1 no tamanho especificado
M = rand(4,4);

# outro jeito com o randi que só vai inteiros,
# [100,1000] são os limites
M = randi([100, 1000],4,4);

# outro jeito com o rand que só vai floats
vi = -100;
vf = 1000;
M = vi+(vf-vf)*rand(4,4);

# Melhor jeito de fazer a diagonal da matriz ser toda 1
vetd = diag(matriz);
M2 = diag(vetd);

matriz-M2+eye(size(matriz));

# Resumindo tudo em uma so linha
# transformando a diagonal de uma matriz em 1
matriz = matriz - diag(diag(matriz)) + eye(size(matriz));

# Produto por um vetor por uma matriz
vet = [1 2 3 4];
matriz = rand(4,4);

result = vet * matriz;

# Transposta de uma matriz
m_trans = matriz';

# Multiplicação de elemento por elemento
M2 = rand(4,4);
M3 = rand(4,4);

# 1 jeito
if size(M2,1) == size(M3,1) && size(M2,2) == size(M3,2)

    for i = 1 : size(M2,1)
        for j = 1 : size(M3,1)
              A(i,j) = M2(i,j) * M3(i,j);
        endfor
    endfor
endif

# 2 jeito
A;
B = M2.*M3;
