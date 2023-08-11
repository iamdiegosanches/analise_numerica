function [Raiz, Zero, Iter, Info] = Pegaso_rm(a,b,Toler,IterMax,f,dfx,dfa,dfb)
    Epsilon = eps;
    fa = f(a);
    Dfa = dfa;
    fb = f(b);
    Dfb = dfb;
    if abs(Dfa) < Epsilon || abs(Dfb) < Epsilon
      info = 2;
      return
    endif
    Ga = fa/Dfa;
    Gb = fb/Dfb;
    Gx = 1 + Toler;
    Iter = 0;
    while 1
        deltax = Gb*(b-a)/(Gb-Ga);
        x = b-deltax;
        Fx = f(x);
        Dfx = dfx;
        if (abs(deltax) <= Toler && abs(Gx) <= Toler) || abs(Dfx) < Epsilon || Iter >= IterMax
           break;
        endif
        Gx = Fx/Dfx;
        if Gb*Gx < 0
            a = b;
            Ga = Gb;
        else
            Ga = Ga*Gb/(Gb+Gx);
        endif
        b = x;
        Gb = Gx;
        Iter = Iter+1
    endwhile
    Raiz = x;
    Zero = f(Raiz);
    if abs(deltax) <= Toler && abs(Gx) <= Toler
        Info = 0;
    else
        if abs(Dfx) >= Epsilon
        Info = 1;
      else
        Info = 2;
        endif
    endif
endfunction
