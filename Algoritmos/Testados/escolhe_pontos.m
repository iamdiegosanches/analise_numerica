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
## @deftypefn {} {[@var{x}, @var{y}, @var{Info}] =} escolhe_pontos (@var{m}, @var{vx}, @var{vy}, @var{z}, @var{grau})
## Entradas:
## numero de pontos dados, vetor com abscissas (em ordem crescente),
## vetor com ordenadas, valor a interpolar e grau maximo do polinomio_gregory_newton
## Saidas:
## abscissas e ordenadas escolhidas e informacao sobre erro, sendo, Info = 0: sem erro
## Info = 1: grau < 1 ou numero de pontos < 2 ou numero de pontos < grau + 1,
## Info = 2: abscissas nao ordenadas, e Info = 3: tentativa de extrapolacao
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-06-27

function [x, y, Info] = escolhe_pontos (m, vx, vy, z, grau)
  if grau < 1 || m < 2 || m < grau + 1
    Info = 1;
    return;
  endif
  Ordenado = true;
  indice(1) = 1;
  for j = 2 : m
    Ordenado = Ordenado & vx(j - 1) < vx(j);
    indice(j) = j;
  endfor
  if ~Ordenado
    Info = 2;
    return;
  endif
  Info = 0;
  np = grau + 1;
  inf = 1;
  sup = m;
  while 1
    if (sup - inf) <= 1
      break;
    endif
    ind = round((inf + sup)/2);
    if vx(ind) > z
      sup = ind;
    else
      inf = ind;
    endif
  endwhile
  Limite = inf;
  if np > 2
    if Limite ~= 1
      ind = indice(1);
      indice(1) = indice(Limite);
      indice(Limite) = ind;
      ind = indice(2);
      indice(2) = indice(Limite + 1);
      indice(Limite+1) = ind;
    endif
    for i = 3 : np
      Menor = abs(vx(indice(i))-z);
      k = i;
      for j = i+1 : m
        aux = abs(vx(indice(j))-z);
        if aux < Menor
          Menor = aux;
          k = j;
        endif
      endfor
      ind = indice(i);
      indice(i) = indice(k);
      indice(k) = ind;
      if indice(i) < Limite
        Limite = indice(i);
      endif
    endfor
  endif
  for i = 1 : np
    x(i) = vx(Limite - 1 + i);
    y(i) = vy(Limite - 1 + i);
  endfor
endfunction
