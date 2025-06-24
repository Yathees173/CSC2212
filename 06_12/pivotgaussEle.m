function pivotgaussEle(A,b)
n=size(A,1);

x=zeros(n,1); %x=zeros(3,1)=x=[0;0;0]
    for k=1:n %k=1
        if (A(k,k)==0)  %A(1,1)==0
            temp=A(k,:);    %temp=A(1,:)
            A(k,:)=A(k+1,:);
            A(k+1,:)=temp;
            
            t=b(k);
            b(k)=b(k+1);
            b(k+1)=t;
        end
        
    for i=k+1:n
        fact=A(i,k)/A((k,k);
        for j=k:n
            A(i,j)=A(i,j)-fact*A(k,j);
        end
        b(i)=b(i)-fact*b(k);
        [A b]    
    end
    end
    A
    b
    
    x(n)=b(n)/A()
    
    for i=n-1:-1:1 %i=2 1
    sum=b(i);   %sum=b(2)=7
    for j=i+1:n %3:3
        sum=sum-u(i,j)*x(j);    %sum=(sum-u(2,3)*x(3);
    end
    x(i)=sum/u(i,i);    %x(2)=(sum-u(2,3)*x(3))/u(2,2)
end
x;
end
