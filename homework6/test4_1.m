%test4_1.m
clc;clear all
h=0.1;
x=0:h:20;
dt=0.1;
D=10.0;
T=10;
n=length(x);
u=zeros(n,floor(T./dt));
u(10./h:11./h,1)=1;
sigma=D.*dt./(h.^2);
a=-sigma.*ones(1,n-1);
b=(1+2.*sigma).*ones(1,n);
c=-sigma.*ones(1,n-1);

plot(x,u(:,1))
axis([0 20 0 1]);
pause(0.1)

for j=1:floor(T./dt)
	u(:,j+1)=chase(a,b,c,u(:,j));
	plot(x,u(:,j+1));
	axis([0 20 0 1]);
	pause(0.01)
end
t=0:dt:floor(T./dt).*dt;
meshz(t,x,u)
xlabel('t');
ylabel('x');
zlabel('u');