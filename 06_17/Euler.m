function Euler(a,b,h,y1)
n=(b-a)/h; %n=(0.1-0)/0.02=5
x=zeros(n,1); %x1 x2 x3 x4 x5 x6
y=zeros(n,1); %y1 y2 y3 y4 y5 y6
fx=zeros(n,1); %f(x,y)
x(1)=a;
y(1)=y1;

for i=1:n %1:5
    x(i+1)=x(i)+h; %x(1+1)=0+0.02
    y(i+1)=y(i)+(h*f(x(i),y(i)));
    %y(2)=y(1)+
    fx(i)=f(x(i),y(i));
end

fx
[x y]
end

function dy=f(x,y)
dy=x+y;
end
