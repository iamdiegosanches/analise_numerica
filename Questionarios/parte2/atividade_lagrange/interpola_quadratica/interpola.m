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
## @deftypefn {} {@var{valor} =} interpola (@var{x}, @var{y}, @var{z})
## entrada:
## vetor das abscissas, vetor de ordenadas, valor a interpolar
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-30

function valor = interpola (x, y, z)
  n = length(x);

  # Construir a matriz
  A = ones(n, n);
  for i = 2:n
    A(:, i) = x.^(i-1);
  end

  # Decomposição LU
  r = sol_decomp_LU (A, y);

  valor = r(1);
  for i = 2:n
      valor = valor + r(i) * z^(i-1);
  end
endfunction
