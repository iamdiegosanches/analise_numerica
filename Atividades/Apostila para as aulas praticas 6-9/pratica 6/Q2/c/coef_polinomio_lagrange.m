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
## @deftypefn {} {@var{c} =} coef_polinomio_lagrange (@var{m}, @var{x}, @var{y}, @var{z})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-30

function c = coef_polinomio_lagrange(m, x, y, z)
  P = ones(m);
  for i = 1 : m
    for j = 1 : m
      if i ~= j
        P(i) = P(i) * (z - x(j));
      endif
    endfor
    c(i) = y(i)/P(i);
  endfor
endfunction

