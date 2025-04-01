disp('1 ************')
A=[1,2,3;4,5,6;7,8,9];
B=A'       % transverse matrix
C=A.'     % transverse matrix
D=A*B      % multiply 

disp('2 ************')

f=[1 1 1; 1 1 1;1 1 1];
x=[1 1 1; 1 1 1;1 1 1];
g=f*x
v=x.*2  % each element multiply by 2

det(A)
%inv(A)

disp('3 ************')

x=5;
if x>0
    disp('positive');
else
    disp('negative');
end

disp('4 ************')

for i=1:5
    disp(i);
end

disp('5 ************')

i=1;
while i<6
    disp(i);
    i=i+1;
end


