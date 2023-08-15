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
## @deftypefn {} {[@var{Raiz}, @var{Iter}, @var{Info}] =} secante (@var{a}, @var{b}, @var{Toler}, @var{IterMax})
## Objetivo: Calcular raiz de equacao pelo metodo da secante
## Entradas:
##    limite inferior, limite superior, tolerancia e numero maximo de iteracoes
## Saida:
##    raiz, numero gasto de iteracoes e informacao sobre consistencia e convergencia,
##    Info = 0 : raiz calculada com sucesso
##    Info = 1 : raiz nao convergiu com parametros dados
##    Info = 2 : raiz calculada esta fora do intervalo
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-03

## ToDo: Arrumar f(a) e f(b)

function [Raiz, Iter, Info] = secante (a, b, Toler, IterMax, f)
  Epsilon = precisao_maquina();
  Fa = f(a);
  Fb = f(b); # avaliar a funcao em a e b
  a0 = a;
  b0 = b;
  Iter = 0;
  while 1
    deltax = Fb*(b-a)/(Fb - Fa);
    x = b - deltax;
    Fx = f(x); # avaliar a funcao em x
    if ((abs(deltax) <= Toler && abs(Fx) <= Toler) || abs(Fb - Fx) < Epsilon || Iter >= IterMax)
      break;
    endif
    # atribuicao dos novos pontos base
    a = b;
    Fa = Fb;
    b = x;
    Fb = Fx;
    Iter = Iter+1;
  endwhile
  Raiz = x;
  # teste de convergencia
  if (abs(deltax) <= Toler && abs(Fx) <= Toler)
    if (Raiz >= a0 && Raiz <= b0)
      Info = 0;
    else
      Info = 2;
    endif
  else
    Info = 1;
  endif
endfunction
