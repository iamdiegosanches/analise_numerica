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
## @deftypefn {} {@var{retval} =} rk4 (@var{input1}, @var{input2})
## Objetivo: Resolver um PVI pelo método de Runge-Kutta de ordem 4
## Entradas: limite inferior, limite superior, valor inicial e numero de subintervalos
## Saidas: abscissas e solucao do PVI
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-07

function [VetX, VetY] = rk4 (a, b, y0, m)
  h = (b - a)/m;
  xt = a;
  yt = y0;
  VetX(1) = xt;
  VetY(1) = yt;
  for i = 1 : m
    x = xt;
    y = yt;
    k1 = f(x,y); # avaliar f(x,y)
    x = xt + h/2;
    y = yt + h/2*k1;
    k2 = f(x,y); # avaliar f(x,y)
    y = yt + h/2*k2;
    k3 = f(x,y); # avaliar f(x,y)
    x = xt + h;
    y = yt + h*k3;
    k4 = f(x,y); # avaliar f(x,y)
    xt = a + i*h;
    yt = yt + h/6*(k1 + 2*(k2 + k3) + k4);
    VetX(i+1) = xt;
    VetY(i+1) = yt;
  endfor
endfunction
