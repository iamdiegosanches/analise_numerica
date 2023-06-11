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
## @deftypefn {} {@var{y} =} Subs_Sucessivas_Pivotal (@var{L}, @var{B}, @var{Pivot})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-09

function y = Subs_Sucessivas_Pivotal(L, b, Pivot)
  n = size(L, 1);
  k = Pivot(1);
  y = zeros(n, 1);  % Inicializa o vetor y com zeros
  y(1) = b(k);
  for i = 2 : n
    soma = 0;
    for j = 1 : i-1
      soma = soma + L(i, j) * y(j);
    endfor
    k = Pivot(i);
    y(i) = b(k) - soma;
  endfor
endfunction

