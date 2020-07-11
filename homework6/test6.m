%test6.m
clc;clear all

c=1;

n=75;
x=linspace(0,1,n);
h=x(2)-x(1);
dt=0.001;
tmax=10;
t=0:dt:floor(tmax/dt).*dt;
m=length(t);
P=(dt.*c./h).^2;
u=zeros(n,m);

u(:,1)=sin(pi.*x);
u(:,2)=sin(pi.*x)+dt.*x./(1-x);

u(1,:)=0;
u(n,:)=0;

for k=2:m-1
	for i=2:n-1
		u(i,k+1)=2.*(1-P).*u(i,k)+P.*(u(i+1,k)+u(i-1,k))-u(i,k-1);
	end
	plot(x,u(:,k))
	axis([0 1 -3 3]);
	xlabel('x')
	ylabel('u')
	pause(0.0001)
end

figure
meshz(t,x,u)
xlabel('t')
ylabel('x');
zlabel('u');
title('数值解')
