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
## @deftypefn {} {@var{retval} =} WDBrent (@var{input1}, @var{input2})
## Objetivo: Calcular raiz de equacao pelo metodo de van Wijngaarden-Dekker-Brent
## Entradas:
##      limite inferior, limite superior, tolerancia e numero maximo de iteracoes
## Saida:
##      raiz, numero gasto de iteracoes e informacao sobre erro, sendo
##      Info = -1: funcao nao muda de sinal nos extremos do intervalo
##      Info = 0: raiz calculada com sucesso
##      Info = 1: raiz nao convergiu com os parametros dados
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-08-03

function [Raiz, Iter, Info] = WDBrent (a, b, Toler, IterMax, f)
  Epsilon = precisao_maquina();
  Fa = f(a);
  Fb = f(b); # avaliar a funcao em a e b
  if (Fa*Fb > 0)
    Info = -1;
    return;
  endif
  c = b;
  Fc = Fb;
  Iter = 0;
  while 1
    # altera a, b e c para que b seja a melhor estimativa da raiz
    if (Fb*Fc > 0)
      c = a;
      Fc = Fa;
      d = b-a;
      e = d;
    endif
    if (abs(Fc) < abs(Fb))
      a = b;
      b = c;
      c = a;
      Fa = Fb;
      Fb = Fc;
      Fc = Fa;
    endif
    tol = 2*Epsilon*abs(b) + 0.5*Toler;
    z = 0.5*(c-b);
    if (abs(z) <= tol || Fb == 0 || Iter >= IterMax)
      break;
    endif
    # escolha entre interpolacao e bissecao
    if (abs(e) >= tol && abs(Fa) > abs(Fb))
      s = Fb/Fa;
      if (a == c) # interpolacao linear
        p = 2*z*s;
        q = 1-s;
      else # interpolacao quadratica inversa
        q = Fa/Fc;
        r = Fb/Fc;
        p = s*(2*z*q*(q-r) - (b-a)*(r-1));
        q = (q-1)*(r-1)*(s-1);
      endif
      if (p>0)
        q = -q;
      endif
      p = abs(p);
      if (2*p < min(3*q*z - abs(tol*q), abs(e*q))) # if muito estranho tem uma virgula nele
        e = d;
        d = p/q;
      else # usa bissecao devido a falha na interpolacao
        d = z;
        e = d;
      endif
    else # usa bissecao por causa da reducao lenta dos limites
      d = z;
      e = d;
    endif
    a = b;
    Fa = Fb; # calcula nova estimativa da raiz
    if (abs(d) > tol)
      b = b + d;
    else
      b = b + sinal(z)*tol; # implementar a funcao de sinal
    endif
    Fb = f(b); # avaliar a funcao em b
    Iter = Iter + 1;
  endwhile
  Raiz = b;
  # Teste de convergencia
  if (abs(z) <= tol || Fb == 0)
    Info = 0;
  else
    Info = 1;
  endif
endfunction
