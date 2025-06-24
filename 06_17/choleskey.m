function choleskey(A,b)
n=size(A,1);
%A
%1 2 3
%2 8 22
%3 22 82

%A'
%1 2 3
%2 8 22
%3 22 82

%b
%5
%6
%-10

x=zeros(n,1); %x=[0;0;0]
U=zeros(n);
    if A==A' %check if A is symmetric
        for i=1:n %row i=1
            for j=i:n %col j=1
                sum=0;
                for k=1:i-1 %1:2-1 ;1:1 k=1
                    sum=sum+U(k,i)*U(k,j);
                    %sum=0+U(1,2)*U(1,2)=2*2=4
                end
                if i==j
                    U(i,j)=sqrt(A(i,i)-sum);
                    %U(1,1)=sqrt(A(1,1)-0)=1
                    %U(2,2)=sqrt(A(2,2)-4)=sqrt(8)-4=2

                else
                    U(i,j)=(A(i,j)-sum)/U(i,i);
                    %U(1,2)=(A(1,2)-0)/U(1,1)=2/1=2
                    %U(1,3)=(A(1,3)-0)/U(1,1)=3/1=3
                end
            end
        end
    else
        error('Matrix A is not symmetric');
    end
    U;
    L=U';

 %forward substitution
[y]=forward_sub(L,b,n);

%backward substition
[x]=backward_sub(U,y,n);

end