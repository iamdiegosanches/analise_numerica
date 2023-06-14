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
## @deftypefn {} escrever_numeros (@var{I}, @var{A}, @var{B}, @var{C})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-14

function escrever_numeros (I, A, B, C)
  if A == B || A == C || B == C
    disp("Os números A, B e C devem ser diferentes entre si.");
    disp("Tente novamente.");
    return;
  endif

  if I == 1
    sorted_nums = sort([A, B, C]);
    disp(sorted_nums);
  elseif I == 2
    sorted_nums = sort([A, B, C], 'descend');
    disp(sorted_nums);
  elseif I == 3
    sorted_nums = sort([A, B, C]);
    disp([sorted_nums(2), sorted_nums(3), sorted_nums(1)]);
  else
    disp("O valor de I deve ser 1, 2 ou 3.");
  endif
endfunction
