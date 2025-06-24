function[x]=jacobi(A,b,x0,steps.epes)
[n,m]=size(A)
x=zeros(n,1)
k=1;

while k<steps
    for i=1:n
        x(i)=0;
        for j=1:n
            if j~=i
                x(i)=x(i)+A(i,j)*x0(j);
            end
        end
        x(i)=(b(i)-x(i)/A(i,i);
    end
    