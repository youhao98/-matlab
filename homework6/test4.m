%test4.m
clc;clear all
x=0:20;
h=1;
dt=0.1;
D=10.0;
T=10;
u=zeros(21,floor(T./dt));
u(10:11,1)=1;
sigma=D.*dt./(h.^2);
m=0;
A=zeros(length(x),length(x));

for i=2:1:length(x)-1
	m=m+1;
	A(i,m)=-1.*sigma;
	A(i,m+1)=(1+2.*sigma);
	A(i,m+2)=-1.*sigma;
end
A(1,1)=(1+2.*sigma);
A(1,2)=sigma;
A(length(x),length(x))=(1+2.*sigma);
A(length(x),length(x)-1)=sigma;

for j=1:1:T./dt
	u(:,j+1)=inv(A)*u(:,j);
	plot(x,u(:,j+1));
	axis([0 20 0 1]);
	pause(0.1)
end
meshz(u)
