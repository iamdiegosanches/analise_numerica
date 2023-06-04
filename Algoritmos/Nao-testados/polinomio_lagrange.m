## Copyright (C) 2023 aluno
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
## @deftypefn {} {@var{r} =} polinomio_lagrange (@var{m}, @var{x}, @var{y}, @var{z})
##
## @seealso{}
## @end deftypefn

## Author: aluno <aluno@LI1-150799>
## Created: 2023-05-23

function r = polinomio_lagrange (m, x, y, z)
  r = 0;
  for i = 1 : m
    c = 1;
    d = 1;
    for j = 1 : m
      if i ~= j
        c = c * (z - x(j));
        d = d * (x(i) - x(j));
      endif
    endfor
    r = r + y(i) * c/d;
  endfor
endfunction
