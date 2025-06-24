function[root]=newton(x0,steps,eps)
    n = 1;
    er = 1;
    xr = x0;
   
    while (n <= steps && er > eps)
        if g(xr) ~= 0
        xr_new=xr-(f(xr)/g(xr));
        end 

        if xr_new ~=0
            eps=abs((xr_new-xr)/xr_new);
        end
        xr=xr_new;
        n=n+1;
    end
    root=xr;
end