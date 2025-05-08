function [root] = false_position(x0, x1, step, epes)
    n = 1; %intial iteration counter        
    er = 1; %initial error

    if f(x0)*f(x1)<0 % Check if root lies between x0 and x1

    while (n <= step && er > epes)
    
        if (f(x1) - f(x0) == 0) %prevent division by zero
            error('Division by zero encountered in Secant Method');
        end

        x2 = x1-(f(x1)*(x1-x0))/(f(x1)-f(x0)) %false position formula
         
        if f(x0)*f(x2)<0
            x1=x2 %Root lies between x0 and x2
        else
            x0=x2 %Root lies between x2 and x1
        end
        x2 %display current approximation
       f(x2) %display function value at x2
        er = abs((x2 - x1) / x2) %compute relative error
        n = n + 1 %increment iteration root
    end

    root = x2

    else
         warning('No root guaranteed in the given interval (f(x0) and f(x1) have the same sign).');
end


