function [x]=backward_sub(u,b,n) % n is size of u matrix
x=zeros(n,1); %zeros(3,1)  
 %u= 3 2 1
    %0 2 3 u(2,3)
    %0 0 2
    
 %b= 6
    %7
    %4
  
x(n)=b(n)/u(n,n); %find last value x(n)

for i=n-1:-1:1 %i=2 1
    sum=b(i);   %sum=b(2)=7
    for j=i+1:n %3:3
        sum=sum-u(i,j)*x(j);    %sum=(sum-u(2,3)*x(3);
    end
    x(i)=sum/u(i,i);    %x(2)=(sum-u(2,3)*x(3))/u(2,2)
end
end