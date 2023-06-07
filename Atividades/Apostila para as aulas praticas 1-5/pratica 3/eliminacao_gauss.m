## Copyright (C) Diego Sanches
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
## Objetivo: Fazer a eliminacao de Gauss do sistema Ax = b
## @deftypefn {} {[@var{A}, @var{b}, @var{Det}, @var{Info}] =} eliminacao_gauss (@var{n}, @var{A}, @var{b})
## Entrada: ordem, matriz dos coeficientes e vetor dos termos independentes
## Saida: matriz U, vetor transformado, determinante e informacao sobre a singularidade de
## A, sendo Info = 0: matriz nao singular, e info = k: menor k tal que u_kk = 0
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-05-28

function [A, b, Det, Info] = eliminacao_gauss (n, A, b)
  Det = 1;
  Info = 0;
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
      t = b(j);
      b(j) = b(p);
      b(p) = t;
      Det = -Det;
    endif
    Det = Det * A(j,j);
    # eliminacao de gauss
    if abs(A(j,j)) ~= 0
      r = 1/A(j,j);
      for i = j+1 : n
        Mult = A(i,j) * r;
        A(i,j) = 0;
        for k = j+1 : n
          A(i,k) = A(i,k) - Mult*A(j,k);
        endfor
        b(i) = b(i) - Mult*b(j);
      endfor
    else
      if Info == 0
        Info = j;
      endif
    endif
  endfor
  Det = Det*A(n,n);
  if Info == 0 && abs(A(n,n)) == 0
    Info = nn = 4;
  endif
endfunction
