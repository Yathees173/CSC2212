function [root] = secant_method(x0, x1, step, epes)
     n = 1; %initial step
     er = 1; %initial error       

    if f(x0)*f(x1)<0

    while (n <= step && er > epes)
        f_x0 = f(x0); %evaluate f at x0
        f_x1 = f(x1); %evaluate f at x1
        
        if (f_x1 - f_x0 == 0) %prevent division by zero
            error('Division by zero encountered in Secant Method');
        end

        x2 = x1-(f_x1*(x1-x0))/(f_x1-f_x0); %secant formula
        er = abs((x2-x1)/x2); %compute relative error

        x0 = x1; %update x0
        x1 = x2; %update x1
        n = n + 1; %next iteration
    end

    root = x2; %if converged return root

    else
         warning('he method did not converge within the given steps.');
end
