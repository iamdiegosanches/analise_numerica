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
## @deftypefn {} {@var{L} =} limites_raizes (@var{n}, @var{c})
## Objetivo: Calcular os limites das raizes reais de uma equacao algebrica
## Entradas:
## n: grau do polinomio
## c: coeficientes
## P(x) = c(1)x^n + c(2)x^n-1 + ... + c(n)x + c(n+1), com c(1) ~= 0 e c(n+1) ~= 0
## Saida:
## L: vetor com os limites inferior e superior das raizes positivas e negativas
## [1/l1, L, -L2, -1/L2]
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-07-27

function L = limites_raizes (n, c)
  n1 = n+1;
  if resto(n,2) == 0
    Sinal = 1;
  else
    Sinal = -1;
  endif
  # matriz com os coeficientesd os polinomios P(x), P1(x), P2(x) e P3(x)
  for i = 1 : n1
    MatC(i,1) = c(1);
    MatC(n1 + 1 - i, 2) = c(i);
    MatC(i,3) = Sinal * c(i);
    Sinal = -Sinal;
    MatC(n1 + 1 - i, 4) = MatC(i, 3);
  endfor
  # calculo dos quatro limites das raizes reais
  for j = 1 : 4
    # se coeficiente lider for negativo, entao troca-se o sinal de todos os coeficientes
    if MatC(i,j) < 0
      for i = 1 : n1
        MatC(i,j) = -MatC(i,j);
      endfor
    endif
    # determinar k, o maior indice de coeficiente negativo e
    # B, o modulo do menor coeficiente negativo
    B = 0;
    for i = n1 : -1 : 2
      if MatC(i,j) < 0
        k = i;
        if abs(MatC(i,j)) > B
          B = abs(MatC(i,j));
        endif
      endif
    endfor
    # limite das raizes positivas de P9x) = 0 e das equacoes auxiliares
    if (B ~= 0)
      L(j) = 1 + (B/MatC(1,j))^(1/(k-1));
    else
      L(j) = 10^10;
    endif
  endfor
  # limites das raizes positivas e negativas de P(x) = 0
  aux = L(1);
  L(1) = 1/L(2);
  L(2) = aux;
  L(3) = -L(3);
  L(4) = -1/L(4);
endfunction
