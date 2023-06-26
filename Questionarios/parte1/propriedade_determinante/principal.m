clear
clc

matriz = input('Entre com uma matriz quadrada: ');

[linhas, colunas] = size(matriz);
if linhas ~= colunas
  disp("A matriz deve ser quadrada.");
  return;
end

[_, determinante] = decomposicao_LU(matriz);
disp("Determinante da matriz de entrada:");
disp(determinante);

for i = 1: linhas-1
  for j = i+1: linhas
    matrizTroca = matriz;
    matrizTroca([i j], :) = matrizTroca([j i], :);

    [_, determinanteTroca] = decomposicao_LU(matrizTroca);

    if sign(determinante) ~= sign(determinanteTroca)
      disp(["Sinal do determinante mudou ao trocar as linhas ", num2str(i), " e ", num2str(j)]);
    endif
  endfor
endfor

for i = 1: colunas-1
  for j = i+1: colunas
    matrizTroca = matriz;
    matrizTroca(:, [i j]) = matrizTroca(:, [j i]);

    [_, determinanteTroca] = decomposicao_LU(matrizTroca);

    if sign(determinante) ~= sign(determinanteTroca)
      disp(["Sinal do determinante mudou ao trocar as colunas ", num2str(i), " e ", num2str(j)]);
    endif
  endfor
endfor
