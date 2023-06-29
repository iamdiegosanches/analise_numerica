## Copyright (C) 2023 Diego sanches
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
## @deftypefn {} {@var{retval} =} seno (@var{x}, @var{n})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-08

function retval = seno (x, n)
  retval = x;
  menos = 2;
  for i = 2 : n
    if rem(i, 2) ~= 0
      menos = menos + 1;
      retval = retval + ((-1)^(menos) * (x^i)) / factorial(i);
    endif
  endfor
endfunction
