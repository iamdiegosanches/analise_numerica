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
## Objetivo: Realizar o produmo misto entre tres matrizes U.(VxW)
## @deftypefn {} {@var{x} =} produto_misto (@var{U}, @var{V}, @var{W})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches Nere dos Santos
## Created: 2023-05-25

function x = produto_misto (U, V, W)
  if size(V) ~= size(W)
    error('V e W devem ter as mesmas dimensoes');
  endif
  if size(U, 2) ~= size(V, 1)
    error('O numero de colunas de U deve ser igual ao numero de linhas de V e W');
  endif
  prod_vet = cross(V, W);
  x = U * prod_vet;
endfunction
