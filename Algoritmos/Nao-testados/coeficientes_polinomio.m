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
## @deftypefn {} {@var{c} =} coeficientes_polinomio (@var{n}, @var{x}, @var{y})
## n = grau maximo do polinomio
## vetores de tamanho n + 1 com abscissas e ordenadas
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-23

function c = coeficientes_polinomio (n, x, y)
  for i = 1 : n + 1
    c(i) = y(i);
  endfor
  # construcao das diferencas divididas
  for i = 1 : n
    for k = n + 1 : -1 : i+1
      c(k) = (c(k) - c(k-1))/(x(k) - x(k-1));
    endfor
  endfor
  # Calculo dos coeficientes
  for i = n : -1 : 1
    for k = 1 : n
      c(k) = c(k) - c(k+1)*x(i);
    endfor
  endfor
endfunction
