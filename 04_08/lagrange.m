function[sum]=lagrange(x,y,x0)
%x=[1 3 5]
%y=[6 4 5]
%y=(x-x1)*(x-x2)/(x0-x1)*(x0-x2)*y0+
%(x-x0)*(x-x2)/(x1-x0)*(x1-x2)*y1+
%(x-x0)*(x-x1)/((x2-x0)*(x2-x1)*y2

n=length(x); %n=3
sum=0;
for i=1:n %1,2,3
    product=y(i); %y(1)=6
    for j=i:n %j=3
        if i~=j
            product=product*(x0-x(j))/(x(i)-x(j));
            %=6*(x0-x(2))/(x(1)-x(2))
        end
    end
    sum=sum+product;
end

end