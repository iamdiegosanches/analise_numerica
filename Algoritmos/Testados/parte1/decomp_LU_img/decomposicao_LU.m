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
## Objetivo
## @deftypefn {} {[@var{A}, @var{Det}, @var{Pivot}] =} decomposicao_LU (@var{A})
##
## @seealso{}
## @end deftypefn

## Author: Alvaro
## Created: 2023-06-19

function [A, Det, Pivot] = decomposicao_LU (A)
  n = size(A,1);
  for i = 1 : n
    Pivot(i) = i;
  endfor
  Det = 1;
  for j = 1 : n-1
    p = j;
    Amax = abs(A(j,j));
    for k = j+1 : n
      if abs(A(k,j)) > Amax
        Amax = abs(A(k,j));
        p = k;
      endif
    endfor
    if p ~= j
      for k = 1 : n
        t = A(j,k);
        A(j,k) = A(p,k);
        A(p,k) = t;
      endfor
      m = Pivot(j);
      Pivot(j) = Pivot(p);
      Pivot(p) = m;
      Det = -Det;
    endif
    Det = Det * A(j,j);
    if abs(A(j,j)) ~= 0
      r = 1/A(j,j);
      for i = j+1 : n
        Mult = A(i,j) * r;
        A(i,j) = Mult;
        for k = j+1 : n
          A(i,k) = A(i,k) - Mult * A(j,k);
        endfor
      endfor
    endif
  endfor
  Det = Det * A(n,n);
endfunction
