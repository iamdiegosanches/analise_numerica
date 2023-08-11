function [Raiz, Iter, Info] = Bissecao(a,b,Toler,IterMax,f)
    fa = f(a);
    fb = f(b);
    if fa*fb > 0
      Info=-1
        return;
    endif
    deltax = abs(b-a);
    Iter = 0;
    while 1
        deltax=deltax/2;
        x = (a+b)/2;
        fx = f(x);
        if (deltax <= Toler && abs(fx) <= Toler) || Iter >= IterMax
            break;
        endif
        if fa*fx >0
            a = x;
            fa = fx;
        else
            b = x;
            fb = fx;
        endif
        Iter=Iter+1;
    endwhile
    Raiz = x;
    if deltax <= Toler && abs(fx) <= Toler
        Info = 0;
    else
        Info = 1;
    endif
endfunction
