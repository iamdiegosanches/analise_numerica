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
## @deftypefn {} {@var{retval} =} bissecao (@var{input1}, @var{input2})
## Objetivo: Calcular raiz de equacao pelo metodo da bissecao
## Entradas: limite inferior, limite superior, tolerancia e numero maximo de iteracoes
## saida: raiz da equacao, numero gasto de iteracoes e informacao sobre erro, sendo
##  Info = -1 : funcao nao muda de sinal nos extremos do intervalo
##  Info = 0 : raiz encontrada
##  Info = 1 : raiz nao convergiu com os  parametros dados
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-02

function [Raiz, Iter, Info] = bissecao (a, b, Toler, IterMax, f)
  Fa = f(a); # avaliar a funcao em a e b
  Fb = f(b);
  if Fa*Fb > 0
    Info = -1;
    return;
  endif
  deltax = abs(b-a);
  Iter = 0;
  while 1
    deltax = deltax/2;
    x = (a+b)/2;
    Fx = f(x);
    if ((deltax <= Toler && abs(Fx) <= Toler) || Iter >= IterMax)
      break;
    endif
    # escolha dos novos pontos
    if Fa*Fx > 0
      a = x;
      Fa = Fx;
    else
      b = x;
      Fb = Fx;
    endif
    Iter = Iter + 1;
  endwhile
  Raiz = x;
  # Teste de convergencia
  if deltax >= Toler || abs(Fx) <= Toler
    Info = 0;
  else
    Info = 1;
  endif
endfunction
