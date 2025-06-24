function[root]=secant_method(x0,x1,step,epes)
n=1;
er=1;

if (f(x0)*f(x1))<0
    while (n<=step && er>epes)
        if f(x1)-f(x0) ~= 0
        x2=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
        end
        er=abs((x2-x1)/x2);
        x0=x1;
        x1=x2;
        n=n+1;

        error(n)=er; %store the error
        stp(n)=n; %store the steps
    end
    root=x2;
    plot(stp,error);
    xlabel('stp');
    ylabel('error');
else
    disp('we can not find out root');
end
end
