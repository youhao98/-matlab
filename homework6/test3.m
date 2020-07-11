%test3.m
clc;clear all
h=0.01;
x=0:h:20;
a2=10;
dt=0.0001;
t_max=40;
n=t_max./dt;
m=length(x);
u=zeros(m,n);
u(100:110,1)=1;
for i=1:n
	for j=2:m-1
		u(j,i+1)=u(j,i)+(a2./h.^2).*dt.*(u(j-1,i)-2.*u(j,i)+u(j+1,i));
	end
	plot(x,u(:,i))
	axis([0 20 0 1]);
	xlabel('x')
	ylabel('u')
	pause(0.000001)
end
meshz(u)
xlabel('t');
ylabel('x');
zlabel('u');
