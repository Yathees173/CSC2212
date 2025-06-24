function[x]=jacobi(A,b,x0,steps,epes)
[n,m]=size(A); %n=3 m=3     %x0=[]
x=zeros(n,1); %x=[0;0;0]
k=1; %iteration no
%A
% x(i)=1/
while k<steps %1<3
    for i=1:n %x(2)=0
        x(i)=0; %x(2)=0
        for j=1:n %j=2
            if j~=i %
                x(i)=x(i)+A(i,j)*x0(j);
            end
        end
        x(i)=(b(i)-x(i))/A(i,i);
    end
    if norm(x(i)-x0)<epes
        x(i);
        disp('epes is satisfy');
        break; %terminates the execution
    else
        k=k+1;
    end
    for i=1:n
        x0(i)=x(i);
    end
end
disp('maximum no of iteration ex');
end

    
    