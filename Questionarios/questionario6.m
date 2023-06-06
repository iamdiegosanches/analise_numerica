clear

mat = input('Entre com uma matriz quadrada: ');
if size(mat, 1) ~= size(mat, 2)
  error('A matriz deve ser quadrada!');
endif
flag = 0;

[_, det] = decomposicao_LU(mat);

# troca a primeira linha da matriz com a ultima linha
t1 = mat(1,:);
mat(1,:) = mat(size(mat, 1),:);
mat(size(mat, 1),:) = t1;
mat

# Usando decomposicao LU para calcular a determinante da matriz
[_, det2] = decomposicao_LU(mat);

if det2 == -det
  flag = 1;
endif
  
# troca a ultima linha da matriz com a primeira linha
t1 = mat(1,:);
mat(1,:) = mat(size(mat, 1),:);
mat(size(mat, 1),:) = t1;

[_, det3] = decomposicao_LU(mat);

if det2 == -det3
  flag = 2;
endif

if flag == 2
  disp('A condicao e verdadeira para as duas trocas');
endif
