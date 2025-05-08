function [root] = fixed_point_iteration(x0, step, eps)
    n = 1; % initial iteration counter
    er = 1; % initial error
    xr = x0; %  start with initial guess
   
    while (n <= step && er > eps)
        x_old = xr;         
        xr = g(x_old);
        if xr~=0
            er = abs((xr - x_old) / xr); % relative error calculation
        end
        n=n+1; %incremental iteration count
        error(n)=er; %store error for plotting
        stp(n)=n; %store steps count
    end
     
    if er <= eps
        root = xr; 
        plot(stp,error); %plot only filled element
        xlabel('step');
        ylabel('error');
    else
     disp('there is no root')
end
end