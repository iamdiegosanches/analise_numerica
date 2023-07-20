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
## @deftypefn {} {@var{T} =} diferencas_finitas (@var{x}, @var{y})
## Entrada:
## x - Vetor de ordenadas
## y - Vetor de abscissas
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-19

function T = diferencas_finitas (x, y)
  m = length(x);
  for i = 1 : m
    Dely(i) = y(i);
    T(i,1) = y(i);
  endfor
  # construcao das diferencas finitas
  aux = 2;
  for i = 1 : m-1
    for k = m : -1 : i+1
      Dely(k) = Dely(k) - Dely(k-1);
    endfor
    t = Dely(:,aux:end)';
    for j = 1 : length(t)
      T(j, aux) = t(j);
    endfor
    aux = aux + 1;
  endfor
endfunction
