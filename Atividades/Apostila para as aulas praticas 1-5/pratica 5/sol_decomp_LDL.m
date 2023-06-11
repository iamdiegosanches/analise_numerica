## Copyright (C) 2023 Diego
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
## Objetivo: solucionar sistema linear utilizando o metodo de docomposicao LDL'
## Requisitos: funcao de decomposicao_LDL, substituicao retroativas e sucessivas
## @deftypefn {} {@var{x} =} sol_decomp_LDL (@var{A}, @var{b})
##
## @seealso{}
## @end deftypefn

## Author: Diego
## Created: 2023-06-07

function x = sol_decomp_LDL (A, b)
  [R, Det] = decomposicao_LDL (A);
  L = eye(size(R,1)) + tril(R,-1);
  D = eye(size(R)).*diag(R);
  y = subst_sucess(L, b);
  for i = 1 : size(R,1)
      t(i)=y(i)/D(i,i);
  endfor
  x = subst_retro(L', t');
endfunction
