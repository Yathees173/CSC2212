function LUfact(A,b)
%A
% 1  1 -1
% 1 -2  3
% 2  3  1
if (A(1,1)~=0)
    n=size(A,1); %n=3
    U=A; 
    L=eye(n); %identity matrix
    %L
    % 1 0 0
    % 0 1 0
    % 0 0 1
    x=zeros(n,1); %x=[0; 0; 0]

    for k=1:n %k=1
        for i=k+1:n %row no
            fact=U(i,k)/U(k,k); %U(2,1)/U(1,1)=1/1=1
            L(i,k)=fact;
            for j=k:n %column no
                U(i,j)=U(i,j)-fact*U(k,j);
            end
        end
    end
    L;
    U;
end

%forward substitution
[y]=forward_sub(L,b,n);

%backward substition
[x]=backward_sub(U,y,n);



end
