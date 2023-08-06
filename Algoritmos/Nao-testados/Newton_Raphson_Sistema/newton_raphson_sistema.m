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
## @deftypefn {} {@var{retval} =} newton_raphson_sistema (@var{input1}, @var{input2})
## Objetivo: Calcular a solucao de sistema de equacoes nao lineares metodo de
## Newton-Raphson com opcao de passo restrito
## Entradas:
##      tipo de passo, ordem do sistema, vetor inicial, tolerancia e num. max. de iteracoes
## Saidas:
##      vetor solucao, numero gasto de iteracoes e informacao sobre convergencia, sendo
##      Info = 0: solucao calculada com sucesso
##      Info = 1: solucao nao convergiu com os parametros dados
##      Info = 2: Jacobiana singular ou falha ao calcular passo restrito
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-03

## Precisa implementar algumas funcoes aqui
## Atualizar todas as normas

function [X, Iter, Info] = newton_raphson_sistema (tp, n, X, Toler, IterMax)
  NormaDeltax = 1 + Toler;
  lambda = 1:
  InfoPR = 0;
  Iter = 0;
  Fx = vetor_funcao(X) # especificar o vetor funcao
  NormaFx = |Fx|; # implementar essa funcao
  while 1
    Jx = matriz_jacobiana(X); # especificar a matriz jacobiana
    [Jx, Pivot, Deter, InfoLU] = decomposicao_LU(n,n,Jx);
    if ((NormaDeltax <= Toler && NormaFx <= Toler) || InfoLU ~= 0 || InfoPR ~= 0 || Iter >+ IterMax)
      break;
    endif
    T = subst_sucess_pivotal(n, Jx, -Fx, Pivot);
    Deltax = subst_retro(n, Jx, T);
    if tp == 1
      X = X + Deltax;
      Fx = vetor_funcao(X);
    else
      Gx = 2*(Jx^T)*Fx; # calculo do vetor gradiente: operacao matricial
      [X,Fx,lambda,j,InfoPR] = passo_restrito(n,X,Fx,Deltax,Gx);
    endif
    NormaFx = |Fx|;
    NormaDeltax = lambda*|Deltax|/|X|;
    Iter = Iter + 1;
  endwhile
  # teste de convergencia
  if (NormaDeltax <= Toler && NormaFx <= Toler)
    Info = 0;
  else
    if (InfoLU == 0 && InfoPR == 0)
      Info = 1;
    else
      Info = 2;
    endif
  endif
endfunction
