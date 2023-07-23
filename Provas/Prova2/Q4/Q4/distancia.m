## Copyright (C) 2023 Diego Sanches
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{dist} =} distancia (@var{rssi}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-21

function dist = distancia (rssi)
  x = [72 55.36 38.65 29.41 20.57];
  y = [1 2 3 4 5];
  
  # Verificar se o rssi esta no limite de pontos
  if rssi < min(x) || rssi > max(x)
    disp('o valor de rssi esta fora do intervalo');
    dist = -1;
    return;
  endif
  
  plot(x, y, 'o');
  hold on;
  # interpolar pelo metodo de lagrange
  dist = polinomio_lagrange (size(x, 2), x, y, rssi);
  plot(rssi, dist, '*');

endfunction
