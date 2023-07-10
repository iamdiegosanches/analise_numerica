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
## @deftypefn {} {@var{retval} =} interpolacao_splines_graf (@var{x}, @var{y}, @var{z})
##
## @seealso{}
## @end deftypefn

## Author: Alvaro 
## Created: 2023-07-08

function interpolacao_splines_graf (x, y, z)
  # splines naturais
  [sz1, Info1] = splines_avaliar (length(x), x, y, length(z), z, 0);
  # splines extrapolados
  [sz2, Info2] = splines_avaliar (length(x), x, y, length(z), z, 1);
  
  plot(x, y, '*r');
  hold on;
  plot(z, sz1, '-m');
  plot(z, sz2, '-g');
  hold off;
endfunction
