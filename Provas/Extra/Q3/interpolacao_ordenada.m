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
## @deftypefn {} {@var{Pz} =} interpolacao_ordenada (@var{x}, @var{y}, @var{z})
##
## @seealso{}
## @end deftypefn

## Author: dgsan <dgsan@LAPTOP-3MAB8DDK>
## Created: 2023-07-20

function Pz = interpolacao_ordenada (x, y, z)
  if length(x) ~= length(y)
    Pz = 0;
    disp('Os vetores nao tem o mesmo tamanho');
    return;
  endif

  [sorted_x, sorted_idx] = sort(x);
  sorted_y = y(sorted_idx);

  [Pz, Info] = splines_avaliar (length(x), sorted_x, sorted_y, length(z), z, 1);
endfunction
