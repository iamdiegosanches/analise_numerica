## Copyright (C) 2023 dgsan
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
## @deftypefn {} {@var{retval} =} newton_cotes_dupla_composta (@var{input1}, @var{input2})
## objetivo: integral dupla de uma funcao pela formula de newton cotes composta
## Entradas:
##          ax->limite inferior em x
##          bx->limite superior em x
##          nx->numero de pontos em x
##          mx->numero de subintervalos em x
##          ay->limite inferior em y
##          by->limite superior em y
##          ny->numero de pontos em y
##          my->numero de subintervalos em y
##          f->funcao de x a ser integrada
## Saidas:
##          integral->valor da integral
##          info->informaca sobre consistencia,sendo info=0:sem erro
##          (info = 1 se (n<1 || n>8);info=2 se rem(m,n)~=0;info=3 se ambas as condicoes ocorrerem
## @seealso{}
## @end deftypefn

## Author: dgsan <dgsan@LAPTOP-3MAB8DDK>
## Created: 2023-08-16

function [int,info] = newton_cotes_dupla_composta (ax,bx,nx,mx,ay,by,ny,my,f)
  if nx == 1 && ny == 1
    [integral,info] = newton_cotes_dupla (ax,bx,nx,mx,ay,by,ny,my,f);
    int = integral;
  else
    n = nx;
    intervalosx = linspace(ax,bx,n);
    intervalosy = linspace(ay,by,n);
    int = 0;
    for i=1:((n)-1)
      [integral,info] = newton_cotes_dupla (intervalosx(i),intervalosx(i+1),nx,mx,intervalosy(i),intervalosy(i+1),ny,my,f);
      int=integral+int;
    endfor
  endif
endfunction

