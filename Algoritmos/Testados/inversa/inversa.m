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
## @deftypefn {} {[@var{A}, @var{Info}] =} inversa (@var{A})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-09

function [A, Info] = inversa (A)
  tam = size(A);
  Info = 1;
  if tam(1) ~= tam(2)
    disp('A matriz deve ser quadrada');
    A = [];
    Info = -1;
    return;
  endif
  n = tam(1);
  identidade = eye(n);
  tmpA = zeros(size(A));
  [A,pivot,PdU,Info] = decomposicao_lu(A);
  if Info ~= 0
    disp('O sistema nao tem solucao');
    A = [];
    return;
  endif
  for i = 1 : n
    b = identidade(:,i);
    y = Subs_Sucessivas_Pivotal (A, b, pivot);
    tmpA(i, :) = subst_retro(A, y);
  endfor
  A = tmpA
endfunction
