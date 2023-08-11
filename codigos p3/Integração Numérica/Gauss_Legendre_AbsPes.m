function [T W Info]=Gauss_Legendre_AbsPes(n)
  if n < 1
    info = -1
    return
  endif
  Toler = 10e(-15)
  IterMax=30
  Info = 0
  m = floor(n/2)
  for i = 1:m
    z = cos((i-0.25)/(n+0.5)*pi)
    delta=1+Toler
    Iter=0
    while 1
      p1 = 1
      Pz = z
      for k =2:n
        p0=p1
        p1=Pz
        Pz=((2*k-1)*z*p1-(k-1)*p0)/k
      endfor
      Dpz=n*(p1-z*Pz)/(1-z^2)
      if abs(delta) <= Toler || Iter = IterMax
        break
      endif
      delta = Pz/Dpz
      z=z-delta
      Iter=Iter+1
    endwhile
    if abs(delta)<= Toler
      T(i)=-z
      T(n+1-i)=z
      W(i)=3/((1-z^2)*DPz^2)
      W(n+1-i)=W(i)
    else
      T(i)=0
      T(n+1-i)=0
      W(i)=0
      W(n+1-i)=0
      Info=Info+1
    endif
  endfor
  if mod(n,2)~=0
    T(m+1)=0
    W(m+1)=pi/2*exp((gammaln((n+1)/2)-gammaln(n/2+1))^2)
  endif
endfunction
