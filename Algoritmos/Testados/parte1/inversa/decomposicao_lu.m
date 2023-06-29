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
## @deftypefn {} {[@var{A}, @var{pivot}, @var{pdu}, @var{info}] =} decomposicao_lu (@var{A})
##
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-09

function [A, pivot, pdu, info] = decomposicao_lu(A)
  tamanho = size(A);
  m = tamanho(1,1);
  n = tamanho(1,2);
  for i = 1:m
    pivot(i) = i;
  endfor
  pdu = 1;
  info = 0;
  for j = 1:min(m,n)
    p = j;
    amax = abs(A(j,j));
    for k = j+1:m
      if abs(A(k,j)) > amax
        amax = abs(A(k,j));
        p = k;
      endif
    endfor
    if p ~= j
      for k = 1:n
        t = A(j,k);
        A(j,k) = A(p,k);
        A(p,k) = t;
      endfor
      i = pivot(j);
      pivot(j) = pivot(p);
      pivot(p) = i;
      pdu = -pdu;
    endif
    pdu = pdu * A(j,j);
    if abs(A(j,j)) ~= 0
      r = 1 / A(j,j);
      for i = j+1:m
        mult = A(i,j) * r;
        A(i,j) = mult;
        for k = j+1:n
          A(i,k) = A(i,k) - mult * A(j,k);
        endfor
      endfor
    else
      if info == 0
        info = j;
      endif
    endif
  endfor
endfunction








