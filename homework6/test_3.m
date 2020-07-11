%test3.m
clc;clear all
h=0.1;
x=0:h:1;
a2=1;
dt=0.0001;
t_max=0.2;
t=0:dt:t_max;
n=length(t);
m=length(x);
u=zeros(m,n);
figure
u(:,1)=exp(-20.*(x-1/2).^2)-exp(-20.*(x-3/2).^2)-exp(-20.*(x+1/2).^2);
for i=1:n
	for j=2:m-1
		u(j,i+1)=u(j,i)+(a2./h.^2).*dt.*(u(j-1,i)-2.*u(j,i)+u(j+1,i));
	end
	plot(x,u(:,i))
	axis([0 1 0 1]);
	xlabel('x')
	ylabel('u')
	pause(0.000001)
end
meshz(t,x,u)
xlabel('t');
ylabel('x');
zlabel('u');
[T,X]=meshgrid(t,x);
title('数值解')
tau=1+80.*T;
phi=(1+80.*T).^(-0.5).*(exp(-20.*(X-0.5).^2./(1+80.*T))-exp(-20.*(X-1.5).^2./(1+80.*T))-exp(-20.*(X+0.5).^2./(1+80.*T)));
figure
meshz(t,x,phi)
xlabel('t');
ylabel('x');
zlabel('u');
title('解析解')
