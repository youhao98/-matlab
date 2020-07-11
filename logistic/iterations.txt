format long;
x_0=input("请输入初值")
a=input("请输入系数")
x=ones(3,40);
n=40;
x(:,1)=a.*(x_0-x_0.^2);
for i=1:n-1
        x(:,i+1)=a.*(x(:,i)-x(:,i).^2);
end
plot(x(1,:),'b*-','MarkerSize',1.6);
hold on
plot(x(2,:),'r*-','MarkerSize',1.6);
hold on
plot(x(3,:),'g*-','MarkerSize',1.6);
title(['\mu=',num2str(a)]);
legend(['\x_0=',num2str(x_0(1))],['\x_0=',num2str(x_0(2))],['\x_0=',num2str(x_0(3))])
