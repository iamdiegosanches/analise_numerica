function [Raiz,Iter,Info] = WDBrent(a,b,Toler,IterMax,f)
  Epsilon = eps;
  Fa = f(a);
  Fb = f(b);
  if Fa*Fb > 0
    Info = -1;
    return
  endif
  c=b;
  Fc = Fb;
  Iter = 0;
  while 1
    if Fb*Fc > 0
      c=a;
      Fc=Fa;
      d=b-a;
      e=d;
    endif
    if abs(Fc)< abs(Fb)
      a=b;
      b=c;
      c=a;
      Fa=Fb;
      Fb=Fc;
      Fc=Fa;
    endif
    tol = 2*Epsilon*abs(b)+0.5*Toler;
    z=0.5*(c-b);
    if abs(z) <= tol && abs(Fa)>abs(Fb)
      s = Fb/Fa;
      if a==c
        p = 2*z*s;
        q=1-s;
      else
        q = Fa/Fc;
        r = Fb/Fc;
        p = s*(2*z*q*(q-r)-(b-a)*(r-1));
        q = (q-1)(r-1)(s-1);
      endif
      if p>0
        q = -q;
      endif
      p =abs(p);
      if 2*p<min(3*z*q-abs(tol*q),abs(e*q))
        e=d;
        d=p/q;
      else
        d=z;
        e=d;
      endif
    else
      d=z;
      e=d;
    endif
    a=b;
    Fa=Fb;
    if abs(d)>tol
      b = b+d;
    else
      b=b+sinal(z)*tol;
    endif
    Fb = f(b);
    Iter=Iter+1;
  endwhile
  Raiz = b;
  if abs(z)<=tol || Fb = 0
    Info = 0;
  else
    Info = -1;
  endif
endfunction
