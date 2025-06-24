function[V]=trapmagf(a,b,n)
  %a=0, b=2, n=4
    h=(b-a)/n; %h=(2-0)/4=0.5
    %i=h/2(f(a)+2*(f(a+h)+)
    sum=0;

    for i=1:n%i =1, i=2 i=3
        x=(a+i)*h;
        sum=sum+2*f(x);
    end
    sum=f(a)+sum+f(b);
    V=h*(sum/2)

end
    

function y=f(x)
    y=x^2;
end

