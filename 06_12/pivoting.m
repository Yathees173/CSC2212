function[A1,b1]= pivoting(A1,b1,i)
[n,n]=size(A1)

p=i;
big=abs(A1(i,i))
disp('Before the pivoting')
A1;
disp('After pivoting')
for j=i+1:n
    dummy=abs(A1(j,i));
    if dummy>big
        big=dummy;
        
        p=j;
    end
end 
    if p~=i
        for k=i:n
            dummy=A1(i,k);
            A1(i,k)=A1(p,k);
            A1(p,k)=dummy;
        end
        dummy=b1(i);
        b1(i)=b1(p);
        b1(p)=dummy;
    end
    
    A1;
    b1;
end


%out put:
% pivoting([2 5 8;4 6 2;7 2 6],[4;8;9],1)
%n = 3
%n = 3
%big = 2

%Before the pivoting

%A1 = 
      %  2     5     8
      %  4     6     2
      %  7     2     6

%After pivoting

%A1 =

   %  7     2     6
   %  4     6     2
   %  2     5     8  
 %b1 =
  %   9
  %   8
  %   4
%ans =
 %    7     2     6
 %    4     6     2
 %    2     5     8