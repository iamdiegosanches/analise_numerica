function [Raiz, Iter, Info] = Regula_Falsi(a,b,Toler,IterMax,f)
    fa = f(a);
    fb = f(b);
    if fa*fb > 0
       Info = -1;
        return
    endif
    Iter = 0;
    while 1
      deltax = fb*(b-a)/(fb-fa);
      x = b - deltax;
      fx = f(x);
      if (abs(deltax) <= Toler && abs(fx) <= Toler) || Iter >= IterMax
          break;
      endif
      if Fb*fx < 0
        a = b;
        fa = fb;
      endif
      b = x;
      fb = fx;
      Iter = Iter + 1;
    endwhile
    Raiz = x;
    if abs(deltax) <= Toler && abs(fx) <= Toler
      Info = 0;
    else
      Info = 1;
    endif
endfunction


