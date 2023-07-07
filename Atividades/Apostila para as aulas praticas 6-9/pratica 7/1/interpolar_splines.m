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
## @deftypefn {} {@var{retval} =} interpolar_splines (@var{x}, @var{y})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-06

function interpolar_splines (x, y)
  n = size(x, 2);

  z = linspace(min(x), max(x), 50);

  sn = splines_avaliar(n, x, y, size(z,2), z, 0);
  se = splines_avaliar(n, x, y, size(z,2), z, 1);

  # Graficos
  plot(x, y, 'o');
  hold on;
  plot(z, sn, 'r');
  plot(z, se, 'g');
  hold off;
  legend('Pontos', 'Splines Cúbicos Naturais', 'Splines Cúbicos Extrapolados');
endfunction
