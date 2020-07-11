x_0=input("请输入初值")
a=input(" 请输入系数")
x=ones(1,250);
n=length(x);
x(1)=a.*(x_0-x_0.^2);
for i=1:n-1
	x(i+1)=a.*(x(i)-x(i).^2);
end
plot(x,'r*-','MarkerSize',1.6)
title(['x_0=',num2str(x_0),'\mu=',num2str(a)])
