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
## @deftypefn {} {@var{retval} =} halley (@var{input1}, @var{input2})
## Objetivo: Calcular raiz de equacao pelo metodo de Halley
## Entradas:
##      valor inicial, tolerancia e numero maximo de iteracoes
## Saidas:
##      raiz, numero gasto de iteracoes e informacao sobre  convergencia, sendo
##      Info = 0 : raiz calculada com sucesso e
##      Info = 1 : raiz nao convergiu com parametros dados
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-03

## ToDo: fazer o algoritmo derivada e derivada segunda

function [Raiz, Iter, Info] = halley (x, Toler, IterMax, f, f_der, f_der2)
  deltax = 1 + Toler;
  Iter = 0;
  while 1
    Fx = f(x);
    DFx = f_der(x); # avaliar a funcao e sua derivada em x
    if ((abs(deltax) <= Toler && abs(Fx) <= Toler) || Iter > IterMax)
      break;
    endif
    D2Fx = f_der2(x); # avaliar a derivada segunda em x
    deltax = 2*Fx*DFx/(2*DFx^2 - Fx*D2Fx);
    x = x - deltax;
    Iter = Iter + 1;
  endwhile
  Raiz = x;
  # teste de convergencia
  if (abs(deltax) <= Toler && abs(Fx) <= Toler)
    Info = 0;
  else
    Info = 1;
  endif
endfunction
