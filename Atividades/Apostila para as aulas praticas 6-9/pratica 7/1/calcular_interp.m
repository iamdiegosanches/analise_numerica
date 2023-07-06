## Copyright (C) 2023 dgsan
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
## @deftypefn {} {@var{retval} =} calcular_interp (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: dgsan <dgsan@LAPTOP-3MAB8DDK>
## Created: 2023-07-06

function Pz = calcular_interp(x, y, s2, x_interp)
  n = length(x);
  # Calculo de h
  h = zeros(1, n);
  for i = 1 : n-1
    h(i) = x(i+1) - x(i)
  endfor
  Pz = 0;
endfunction

