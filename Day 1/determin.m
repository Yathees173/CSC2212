function d=determin(A)
[n,m]=size(A);

if n~=m %check if A is square matrix
    error('matrix must be square'); %thrown an error
end

if n==1 %if A is a 1*1 matrix
    d=A(1,1);
    return;
end

if n==2 %if A is a 2*2 matrix
    d=A(1,1)*A(2,2)-A(1,2)*A(2,1);
    return;
end

d=0; %initializes d=0
for i=1:n
   % m=A(2:n,setdiff(1:n, i));
    m = A(2:n, [1:i-1, i+1:n]);% remove 1st row,
    d=d+(-1)^(1+i)*A(1,i)*determin(m); %recursively until it reaches a 2*2 matrix

end
end