## Copyright (C) 2023 Alvaro
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
## @deftypefn {} {[@var{Integral}, @var{Info}]=} gauss_legendre_dupla (@var{ax}, @var{bx}, @var{nx}, @var{ay}, @var{by}, @var{ny})
## 
## Objetivo: Calculo de integral dupla pelas formulas de Gauss-Legendre
## Entrada:
##      ax: limite inferior em x
##      bx: limite superior em x
##      nx: numero de pontos em x
##      ay: limite inferior em y
##      by: limite superior em y
##      ny: numero de pontos em y
## Saída:
##      Integral: valor da integral
##      Info: Informacao sobre consistencia e convergencia, sendo:
##             Info = 0 -> parametros sao consistente e todos os zeros convergiram
##             Info = -1 -> nx<1 ou ny<1
##             Info = k -> k zeros nao convergiram
## @seealso{}
## @end deftypefn

## Author: Alvaro <Alvaro@DESKTOP-TG63L3N>
## Created: 2023-07-24

## Obs.:
##    não sei o que é f(x,y)

function [Integral, Info] = gauss_legendre_dupla (ax, bx, nx, ay, by, ny)
  Integral = 0;
  Info = 0;
  # calculo das abscissas e pesos
  [T, alfa, Info] = gauus_legendre_abspes(nx);
  if Info ~= 0
    return;
  endif
  if ny == nx
    for j = 1 : ny
      beta(j) = alfa(j);
      U(j) = T(j);
    endfor
  else
    [U,beta,Info] = gauus_legendre_abspes(ny);
    if Info ~= 0
      return;
    endif
  endif
  # calculo da integral dupla
  bax = (bx-ax)/2;
  bay = (by-ay)/2;
  for i = 1 : nx
    x = ax + bax*(T(i)+1);
    Soma = 0;
    for j = 1: ny
      y = ay + bay*(U(j)+1);
      fxy = f(x,y) # avaliar a funcao integrando em x,y
      Soma = Soma + beta(j)*fxy;
    endfor
    Integral = Integral + alfa(i)*Soma;
  endfor
  Integral = bax*bax*Integral;
endfunction
