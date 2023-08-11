function [Raiz, Iter, Info] = Pegaso(a,b,Toler,IterMax,f)
    fa = f(a);
    fb = f(b);
    Iter = 0;
    while 1
        deltax = fb*(b-a)/(fb-fa);
        x = b-deltax;
        fx = f(x);
        if (abs(deltax) <= Toler && abs(fx) <= Toler) || Iter >= IterMax
           break;
        endif
        if fx*fb < 0
            a = b;
            fa = fb;
        else
            fa = fa*fb/(fb+fx);
        endif
        b = x;
        fb = fx;
        Iter = Iter+1
    endwhile
    Raiz = x;
    if abs(deltax) <= Toler && abs(fx) <= Toler
        Info = 0;
    else
        Info = 1;
    endif
endfunction
