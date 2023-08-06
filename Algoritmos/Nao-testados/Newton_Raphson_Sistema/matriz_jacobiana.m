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
## @deftypefn {} {@var{retval} =} matriz_jacobiana (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: dgsan <dgsan@LAPTOP-3MAB8DDK>
## Created: 2023-08-03

function J = matriz_jacobiana (x)
  J(1,1) = 2*x(1) + x(2);
  J(1,2) = x(1) - 2*x(2);
  J(2,1) = 1/x(1);
  J(2,2) = 1/(2*sqrt(x(2) + 2));
endfunction
