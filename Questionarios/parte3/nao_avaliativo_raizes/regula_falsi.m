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
## @deftypefn {} {@var{retval} =} regula_falsi (@var{input1}, @var{input2})
## Objetivo: Calcular raiz de equacao pelo metodo da regula falsi
## Entrada:
##      limite inferior, limite superior, tolerancia e numero maximo de iteracoes
## Saidas:
##      raiz, numero gasto de iteracoes e informacao sobre consistencia e convergencia.
##      Info = -1 : funcao nao muda de sinal nos extremos no intervalo
##      Info = 0 : raiz calculada com sucesso
##      Info = 1 : raiz nao convergiu com parametros dados
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-03

function [Raiz, Iter, Info] = regula_falsi (a, b, Toler, IterMax, f)
  Fa = f(a);
  Fb = f(b);
  # verificar se a funcao muda de sinal nos extremos de [a,b]
  if (Fa*Fb > 0)
    Info = -1;
    return;
  endif
  Iter = 0;
  while 1
    deltax = Fb*(b-a)/(Fb - Fa);
    x = b-deltax;
    Fx = f(x); # avaliar a funcao em x
    if ((abs(deltax) <= Toler && abs(Fx) <= Toler) || Iter >= IterMax)
      break;
    endif
    # atribuicao dos novos pontos base2dec
    if (Fb*Fx < 0)
      a = b;
      Fa = Fb;
    endif
    b = x;
    Fb = Fx;
    Iter = Iter + 1;
  endwhile
  Raiz = x;
  # teste de convergencia
  if ((abs(deltax) <= Toler) && abs(Fx) <= Toler)
    Info = 0;
  else
    Info = 1;
  endif
endfunction
