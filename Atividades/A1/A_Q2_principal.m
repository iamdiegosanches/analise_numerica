clear
verdade = 1;
% Loop para criar as 1000 matrizes
for i = 1:1000
    % Gerar tamanho aleatório para a matriz
    tamanho = randi([2, 7]);
    num_linhas = tamanho;
    num_colunas = tamanho;
    % Gerar uma matriz aleatória
    matriz = rand(num_linhas, num_colunas) * 100;

    t1 = traco(matriz);
    t2 = traco(matriz');
    if t1 ~= t2
      verdade = 0;
    endif
endfor

if verdade ~= 1
  disp('A propriedade nao foi valida!');
else
  disp('A propriedade e valida!');
endif

