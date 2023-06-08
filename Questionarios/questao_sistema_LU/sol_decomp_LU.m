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
## @deftypefn {} {@var{x} =} sol_decomp_LU (@var{A}, @var{b})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-07

function x = sol_decomp_LU (A, b)
  [R, Det, Pivot] = decomposicao_LU(A);
  L = eye(size(R,1)) + tril(R, -1);
  U = triu(R);
  y = subst_sucess_pivotal (L, b, Pivot);
  x = subst_retro(U, y');
endfunction
