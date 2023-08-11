function [Integral,Delta,Iter,Info] = Gauss_Legendre_Iterativo(a,b,Toler,IterMax)
  Iter = 1
  n1 = 5
  n2 = 8
  [Int Info]=Gauss_Legendre(a,b,n2)
  while 1
    iter = iter+1
    n=n1+n2
    [Integral Info]=Gauss_Legendre(a,b,n)
    if Integral ~= 0
      Delta = abs((Integral-Int)/Integral)
    else
      Delta = abs(Integral - Int)
    endif
    if Delta <= Toler || Iter = IterMax
      break
    endif
    Int = Integral
    n1=n2
    n2 = n
  endwhile
  if Delta <= Toler
    Info = 0
  else
    Info = 1
  endif
endfunction
