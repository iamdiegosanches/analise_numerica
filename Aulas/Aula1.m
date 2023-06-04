# Write your Octave code here

a = 10;
b = 20;
a + b # Should result in 30
a * b # Should result in 200
a / b # Should result in 0.5000
a ^ b # Should result in 1*10^20
a ** b # Should result in 1*10^20
a \ b # Isso é b / a
# O ; (ponto e virgula) faz com que não mostre o resultado
a \ b;


# Primeiro jeito de fazer multiplas
# operacoes com os resultados das ops anteriores
c = a + b
d = a * c
e = a / d
f = a \ e

# Segundo jeito: utilizando a variavel padrao ans
a + b
g = a * ans
h = a / ans

c = 100

# Usando o if
# Obs.: Ele não aceita caracteres especiais
if c < 100
     disp('O valor de C e menor que 100')
else
     disp('O valor de C e maior ou igual que 100')
endif

# Usando o for
# Repete dez vezes e realizar um somatorio
soma = 0;

# Exercício 1
for i = 1 : 10
    soma = soma + (i^2) + 3;
endfor

# Formas diferentes de printar um valor no octave
disp('O valor de r e:')
soma

# Exercício 2: Calcular outro somatorio
r = 0;
for i = 1 : 0.1 : 2
    r = r + 1/(5*i^2) + (i*25);
endfor

disp('O valor de r e:')
r

# Como usar vetor
# Separo as linhas por espaço e as colunas por ;
ver = [1 2 3]
vet = [4;5;6]

# Multiplicação de vetores ( Produto escalar de vetores )
escalar = ver * vet

# Exercício 3
# Verificando se dois vetores são perpendiculares

vet1 = [0 2 3 5 8];
vet2 = [1;0;0;0;0];

escalar = vet1 * vet2

if escalar == 0
     disp('Sao perpendiculares')
else
     disp('Nao sao perpendiculares')
endif
