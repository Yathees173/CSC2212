function [root] = newton_raphson(x0,steps,epes)
    n=1; %initial iteration
    xr=x0; %initial guess
    er=1; %initial error

     while (er > epes && n <= steps)
        if df(xr) ~= 0 
             xr_new=xr-(f(xr)/df(xr)); %newton raphson equation
        end

     if xr_new~=0
       er = abs((xr_new - xr) / xr_new);
     end
        xr=xr_new; %update current guess
        n =n + 1;
     end

    root = xr; %final root value
  
end
