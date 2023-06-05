## Copyright (C) 2023 aluno
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
## @deftypefn {} {@var{x}, @var{Iter}, @var{CondErro} =} jacobi (@var{n}, @var{A}, @var{b}, @var{Toler}, @var{IterMax})
##
## @seealso{}
## @end deftypefn

## Author: aluno <aluno@LI1-150814>
## Created: 2023-05-23

function [x, Iter, CondErro] = jacobi (n, A, b, Toler, IterMax)
    for i = 1: n
      r = 1/A(i,i);
      for j = 1 : n
        if i ~= j
          A(i,j) = A(i,j)*r;
        endif
        b(i) = b(i)*r;
        x(i) = b(i);
      endfor
    endfor
    Iter = 0;
    while
      Iter = Iter + 1;
      for i = 1: n
        Soma = 0;
        for j = 1 : n
          if i ~= j
            Soma = Soma + A(i,j)*x(j);
          endif
        endfor
        v(i) = b(i) - Soma;
      endfor
      Normanum = 0;
      NormaDen = 0;
      for i = 1 : n
        t = abs(v(i) - x(i));
        if t > Normanum
          Normanum = t;
        endif
        if abs(v(i)) > NormaDen
          NormaDen = abs(v(i));
        endif
        x(i) = v(i);
      endfor
      NormaRel = Normanum/NormaDen;
      disp(Iter);
      disp(x);
      disp(NormaRel);
      if NormaRel <= Toler || Iter >= IterMax
        break
      endif
    endwhile
    if NormaRel <= Toler
      CondErro = 0;
    else
      CondErro = 1;
    endif
endfunction
