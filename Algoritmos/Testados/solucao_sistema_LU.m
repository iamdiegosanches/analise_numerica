## Copyright (C) 2023 Diego Sanches Nere dos Santos
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
## @deftypefn {} {@var{x} =} solucao_sistema_LU (@var{A}, @var{b})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches Nere dos Santos
## Created: 2023-05-24

function x = solucao_sistema_LU (A, b)
  [A,Pivot,PdU,Info] = LUPivot(A);
  U = triu(A);
  L = eye(size(A)) + tril(A, -1);
  P = eye(size(A));
  P = p(Pivot,:);
  b = P*b;
  n = size(A,1);
  y = subst_sucess(L,b);
  x = subst_retro(U,y);
endfunction
