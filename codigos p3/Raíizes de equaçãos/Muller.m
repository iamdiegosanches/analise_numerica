function [Raiz, Iter, Info] = Muller(a,b,Toler,IterMax,f)
    fa = f(a);
    fb = f(b);
    x = (a+b)/2;
    Fx = f(x);
    x = b;
    Iter = 0;
    while 1
        ha = x-a;
        hb = b-x;
        Da = (fa-fx)/ha;
        Db = (fb-fx)/hb;
        AA = (Da+Db)/(ha+hb);
        BB = (ha*Db-hb*Da)/(ha+hb);
        CC = fx;
        Delta = sqrt(BB^2-4*AA*CC);
        if abs(BB + Delta) > abs(BB - Delta)
          v = (-2*CC)/(BB + Delta);
        else
          v = (-2*CC)/(BB - Delta);
        endif
        t = x;
        ft = Fx;
        x = x+v;
        Fx = f(x);
        if (abs(v) <= Toler && abs(Fx) <= Toler) || Iter >= IterMax
          return;
        endif
        a = b;
        fa = fb;
        b = t;
        fb = ft;
        Iter = Iter+1;
    endwhile
    Raiz = x;
    if (abs(v) <= Toler && abs(Fx) <= Toler)
      Info = 0;
    else
      Info = 1;
    endif
endfunction
