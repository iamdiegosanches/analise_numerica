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
## @deftypefn {} {@var{retval} =} coeficientes_lagrange (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-06

function coeficientes = coeficientes_lagrange(m, x, y)
  coeficientes = zeros(1, m);
  for i = 1 : m
    produto = [1];
    for j = 1 : m
      if i ~= j
        produto = conv(produto, [1, -x(j)]) / (x(i) - x(j));
      endif
    endfor
    coeficientes = coeficientes + y(i) * produto;
  endfor
endfunction

