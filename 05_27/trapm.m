function [V]=trapm(h,f)

    n=length(f);

    sum=f(1);

    for i=2:n-1
        sum=sum+2*f(i);
    end

    sum=sum+f(n)+f(x1);
    V=h*sum/2;
end

    
