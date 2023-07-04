clear
clc

addpath("interpola_quadratica");

# abscissas e ordenadas
x = [-7 -2 0 2 4 5 6 7 8];
y = [109 -1 -3 19 65 97 135 179 229];

# valores a interpolar
z = [-6 -1 3 5 6];

disp('Metodo de lagrange');
for i = 1 : length(z)
  Pz = polinomio_lagrange (length(x), x, y, z(i))
endfor

disp('Por interpolacao linear');
# Escolher automaticamente os 3 pontos mais proximos para interpolacao
for i = 1 : length(z)

  [~, indices] = sort(abs(x - z(i)));
  nearest_indices = indices(1:3);

  xp = x(nearest_indices);
  yp = y(nearest_indices);

  valor = interpola (xp, yp, z(i))
endfor


