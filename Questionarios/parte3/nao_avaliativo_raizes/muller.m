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
## @deftypefn {} {@var{retval} =} muller (@var{input1}, @var{input2})
## Objetivo: Calcular raiz de equacao pelo metodo de Muller
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-03

function [Raiz, Iter, Info] = muller (a, b, Toler, IterMax, f)
  Fa = f(a);
  Fb = f(b); # avaliar a funcao em a e b
  # obtencao do terceiro ponto para interpolacao quadratica via bissecao
  x = (a+b)/2;
  Fx = f(x); # avaliar a funcao em x
  Iter = 0;
  while 1
    ha = x-a;
    hb = b-x;
    Da = (Fa-Fx)/ha;
    Db = (Fb-Fx)/hb;
    AA = (Da+Db)/(ha+hb);
    BB = (ha*Db - hb*Da)/(ha + hb);
    CC = Fx;
    Delta = sqrt(BB^2 - 4*AA*CC);
    if (abs(BB + Delta) > abs(BB - Delta))
      v = -2*CC/(BB + Delta);
    else
      v = -2*CC/(BB - Delta);
    endif
    t = x;
    Ft = Fx;
    x = x + v;
    Fx = f(x); # avaliar a funcao em x
    if((abs(v) <= Toler && abs(Fx) <= Toler) || Iter >= IterMax)
      break;
    endif
    # atribuicao de novos pontos base
    a = b;
    Fa = Fb;
    b = t;
    Fb = Ft;
    Iter = Iter + 1;
  endwhile
  Raiz = x;
  # teste de convergencia
  if (abs(v) <= Toler && abs(Fx) <= Toler)
    Info = 0;
  else
    Info = 1;
  endif
endfunction
