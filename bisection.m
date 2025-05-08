function[root]=bisection(xl,xu,step,epes)
n=1; % iteration counter
er=1; % initial error
xr=0; % initial root

if f(xl)*f(xu)<0 % check for valid root
    while (n<=step && er>epes)
    xr_old=xr 
    xr=(xl+xu)/2 %compute midpoint

    if f(xl)*f(xr)<0
        xu=xr
    else
        xl=xr
    end
    er=abs((xr-xr_old)/xr) %find relative error
    n=n+1 % increment iteration
    end
    root=xr % final root
else 
     disp('there is no root')
end
end