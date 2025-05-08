function[root]=bisection1(xl,xu,steps,epes)
    n=1;
    err=1;
    xr=0;

    if f(xl)*f(xu)<0
        while n<=steps && epes>=err
            xr_old=xr;
            xr=(xl+xu)/2;

            if f(xl)*f(xr)<0
                xu=xr;
            else
                xl=xr;
            end
            err=abs((xr-xr_old)/xr);
            n=n+1;
        end
        root=xr;
    else
        disp('Not have root')
    end
end