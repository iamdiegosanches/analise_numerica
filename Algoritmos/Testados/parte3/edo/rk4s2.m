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
## @deftypefn {} {@var{retval} =} rk4s2 (@var{input1}, @var{input2})
## Objetivo: Resolver sistema de EDOS's pelo metodo de runge-Kutta de ordem 4
## entrada: limite inferior, limite superior, dois valores iniciais e numero de subintervalos
## saida: abscissas e solucoes do PVI
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-08

function [VetX, VetY1, VetY2] = rk4s2 (a, b, y10, y20, m, f1, f2)
  h = (b-a)/m;
  xt = a;
  y1t = y10;
  y2t = y20;
  VetX(1) = xt;
  VetY1(1) = y1t;
  VetY2(1) = y2t;
  for i = 1 : m
    x = xt;
    y1 = y1t;
    y2 = y2t;
    k11 = f1(x,y1,y2);
    k12 = f2(x,y1,y2);
    x = xt + h/2;
    y1 = y1t + h/2*k11; y2 = y2t + h/2*k12;
    k21 = f1(x,y1,y2);
    k22 = f2(x,y1,y2);
    y1 = y1t + h/2*k21; y2 = y2t + h/2*k22;
    k31 = f1(x,y1,y2);
    k32 = f2(x,y1,y2);
    x = xt + h;
    y1 = y1t + h*k31; y2 = y2t + h*k32;
    k41 = f1(x,y1,y2);
    k42 = f2(x,y1,y2);
    xt = a + i*h;
    y1t = y1t + h/6*(k11 + 2*(k21+k31) + k41);
    y2t = y2t + h/6*(k12 + 2*(k22+k32) + k42);
    VetX(i+1) = xt; VetY1(i+1) = y1t; VetY2(i+1) = y2t;
  endfor
endfunction
