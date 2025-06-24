function gaussion(A,b)
n=size(A,1);
x=zeros(n,1);


for k=1:n
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
end

    