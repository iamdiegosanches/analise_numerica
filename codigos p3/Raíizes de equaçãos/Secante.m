function [Raiz, Iter, Info] = Secante(a,b,Toler,IterMax,f)
    fa = f(a);
    fb = f(b);
    a0 = a;
    b0 = b;
    Iter = 0;
    while 1
      deltax = fb*(b-a)/(fb-fa);
      x = b - deltax;
      fx = f(x);
      if (abs(deltax) <= Toler && abs(fx) <= Toler) || abs(Fb-fx) < Epsilon || Iter >= IterMax
          break;
      endif
      a = b;
      fa = fb;
      b = x;
      fb = fx;
      Iter = Iter+1;
    endwhile
    Raiz = x;
    if abs(deltax) <= Toler && abs(fx) <= Toler
      if Raiz >= a0 && Raiz <= b0
        Info = 0;
      else
        Info = 2;
      endif
    else
      Info = 1;
    endif
endfunction

