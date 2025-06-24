function [yint2]=newtonInt(x,y,xi)
%x=[1 2 4] ;[x(1) x(2) x(4)]
%y=[2 3 10]
%xi=3
    n=length(x); %n=3
    fdd=zeros(n);
    %f(x)=y 1st 2nd
    %0      0   0
    %0      0   0
    %0      0   0
    yint=zeros(n,1);
    Ea=zeros(n-1,1);

    fdd(:,1)=y(:);
    %f(x)=y 1st 2nd
    %2      0   0
    %3      0   0
    %10     0   0

    for j=2:n %2:3 j=2
        for i=1:n+1-j %(1,2) (2,2) i=1
            fdd(i,j)=(fdd(i+1,j-1)-fdd(i,j-1))/(x(i+j-1)-x(i));
            %fdd(1,2)=(fdd((2,1)-fdd(1,1)/x(2)-x(1))
        end

        xterm=1;
        yint(1)=fdd(1); %yint(1)=2=b1
        % find solution for xi value
        for order=2:n % 2:3 order=3 xi=3
            xterm=xterm*(xi-x(order-1));%(xi-x1)(xi-x2)
            yint2=yint(order-1)+fdd(1,order)*xterm;
            %yint2=yint(1)+fdd(1,2)*xterm
            %yint(2)=yint(2)+fdd(1,3)*xterm
            Ea(order)=yint2-yint(order-1);
            yint(order)=yint2;
            %yint((2)=yint2
        end
        %f2(x)=b1+b2(xi-x1)+b3(xi-x1)(xi-x2)
end