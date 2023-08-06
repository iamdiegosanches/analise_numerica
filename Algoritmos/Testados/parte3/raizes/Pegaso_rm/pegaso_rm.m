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
## @deftypefn {} {@var{retval} =} pegaso_rm (@var{input1}, @var{input2})
## Objetivo: Calcular raiz multipla de equacao pelo metodo pegaso
## Entradas:
##      limite inferior, limite superior, tolerancia e numero maximo de iteracoes
## Saidas:
##      raiz, f(raiz), numero gasto de iteracoes e informacao sobre convergencia, sendo
##      Info = 0 : raiz calculada com sucesso
##      Info = 1 : raiz nao convergiu com parametros dados
##      Info = 2 : derivada se anula
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-03

function [Raiz, Zero, Iter, Info] = pegaso_rm (a, b, Toler, IterMax, f, f_der)
  Epsilon = precisao_maquina();
  Fa = f(a);
  DFa = f_der(a); # avaliar a funcao e sua derivada em a
  Fb = f(b);
  DFb = f_der(b); # avaliar a funcao e sua derivada em b
  if (abs(DFa) < Epsilon || abs(DFb) < Epsilon)
    Info = 2;
    return;
  endif
  Ga = Fa/DFa;
  Gb = Fb/DFb;
  Gx = 1 + Toler;
  Iter = 0;
  while 1
    deltax = Gb*(b-a)/(Gb-Ga);
    x = b - deltax;
    Fx = f(x);
    DFx = f_der(x); # avaliar a funcao e sua derivada em x
    if ((abs(deltax) <= Toler && abs(Gx) <= Toler) || abs(DFx) < Epsilon || Iter >= IterMax)
      break;
    endif
    Gx = Fx/DFx;
    # atribuicao dos novos pontos base
    if (Gb*Gx < 0)
      a = b;
      Ga = Gb;
    else
      Ga = Ga*Gb/(Gb+Gx); # a abscissa a se mantem inalterada
    endif
    b = x;
    Gb = Gx;
    Iter = Iter + 1;
  endwhile
  Raiz = x;
  Zero = f(Raiz); # avaliar a funcao em Raiz
  # teste de convergencia
  if (abs(deltax) <= Toler && abs(Gx) <= Toler)
    Info = 0;
  else
    if (abs(DFx) >= Epsilon)
      Info = 1;
    else
      Info = 2;
    endif
  endif
endfunction
