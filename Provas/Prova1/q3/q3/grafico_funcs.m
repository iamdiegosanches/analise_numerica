## Copyright (C) Diego Sanches
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
## @deftypefn {} {@var{retval} =} grafico_funcs (@var{matriz})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-20

function retval = grafico_funcs (matriz)
  m = size(matriz, 1);
  if size(matriz, 1) > 8
    disp('Nao e possivel resolver com uma matriz com mais de 8 linhas');
    return;
  endif
  index = 1;
  cores = ['r', 'g', 'b', 'k', 'y', 'm', 'c'];
  figure(1);
  for i = 1 : size(matriz, 1)
    for j = i + 1 : size(matriz, 1)
      subplot(m,m,index);
      abscissas  = matriz(i, :);
      ordenadas = matriz(j, :);
      plot(ordenadas, abscissas, cores(randi([1, 7])));
      index = index + 1;
    endfor
  endfor
endfunction
