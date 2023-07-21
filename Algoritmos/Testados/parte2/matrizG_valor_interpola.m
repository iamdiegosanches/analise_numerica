## Copyright (C) 2023 Alvaro
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
## @deftypefn {} {@var{retval} =} matrizG_valor_interpola (@var{x}, @var{z})
##
## @seealso{}
## @end deftypefn

## Author: Alvaro <Alvaro@DESKTOP-TG63L3N>
## Created: 2023-07-21

function retval = matrizG_valor_interpola (x, z)
  m = length(x);
  G = zeros(size(x));
  for i = 1: m
     G(i, i) = z - x(i);
  endfor
  for i = 1:m
    for j = 1:m
      if i == j
        continue;
      endif
      G(i, j) = x(i) - x(j);
    endfor
  endfor
endfunction
