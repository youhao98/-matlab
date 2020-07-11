%test5.m
clc;clear all
n=26;
x=linspace(0,1,n);
h=x(2)-x(1);
dt=0.01;
tmax=1;
t=0:dt:floor(tmax/dt).*dt;
m=length(t);
P=dt./h.^2;
P1=1./P+1;
P2=1./P-1;
phi=zeros(n,m);

phi(:,1)=exp(-20.*(x-1/2).^2)-exp(-20.*(x-3/2).^2)-exp(-20.*(x+1/2).^2);

A=-ones(n,3);
A(:,2)=-1.*2.*P1*A(:,1);
A(1,2)=h;
A(1,3)=0;
A(n,2)=h;
A(n,1)=0;

for i=2:n
	A(i,2)=1.*(A(i,2)-A(i,1).*A(i-1,3)./A(i-1,2));
end

for i=2:m
	R(1)=-1.*h.*phi(1,i-1);
	R(n)=-1.*h.*phi(n,i-1);
	for j=2:n-1
		R(j)=phi(j-1,i-1)+2.*P2.*phi(j,i-1)+phi(j+1,i-1);
    end

	for j=2:n
		R(j)=R(j)-A(j,1).*R(j-1)./A(j-1,2);
	end

	R(n)=R(n)./A(n,2);
	for j=n-1:-1:1
		R(j)=(R(j)-A(j,3).*R(j+1))./A(j,2);
	end
	
	phi(:,i)=R;
	plot(x,R)
	axis([0 1 0 1]);
	xlabel('x')
	ylabel('phi')
	pause(0.000001)
end

figure
subplot(2,1,1)
meshz(t,x,phi)
xlabel('t')
ylabel('x');
zlabel('phi');
[T,X]=meshgrid(t,x);
title('数值解')
tau=1+80.*T;
phi_1=(1+80.*T).^(-0.5).*(exp(-20.*(X-0.5).^2./(1+80.*T))-exp(-20.*(X-1.5).^2./(1+80.*T))-exp(-20.*(X+0.5).^2./(1+80.*T)));
subplot(2,1,2)
meshz(t,x,phi_1)
xlabel('t');
ylabel('x');
zlabel('phi');
title('解析解')

