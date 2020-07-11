% test1_1.m
clc;clear all
n=100;
x=linspace(0,1,n);
h=x(2)-x(1);
s(1:n)=0;
u(1:n)=0;
u(1)=1;
u(2)=1-2.*(pi.^2).*h.^2;
q(1:n)=4*pi.^2;
z1(1)=1;
z2(1)=0;

tic
U=numerove(n,h,q,s,u);
toc

tic
for i=1:n-1
	k1=h.*t1z1(x(i),z1(i),z2(i));
	l1=h.*t1z2(x(i),z1(i),z2(i));
    k2=h.*t1z1(x(i)+0.5*h,z1(i)+0.5.*k1,z2(i)+0.5.*l1);
    l2=h.*t1z2(x(i)+0.5*h,z1(i)+0.5.*k1,z2(i)+0.5.*l1);
	k3=h.*t1z1(x(i)+0.5*h,z1(i)+0.5.*k2,z2(i)+0.5.*l2);
    l3=h.*t1z2(x(i)+0.5*h,z1(i)+0.5.*k2,z2(i)+0.5.*l2);
	k4=h.*t1z1(x(i)+h,z1(i)+k3,z2(i)+l2);
    l4=h.*t1z2(x(i)+h,z1(i)+k3,z2(i)+l2);
	z1(i+1)=z1(i)+1/6.*(k1+2*k2+2*k3+k4);
    z2(i+1)=z2(i)+1/6.*(l1+2*l2+2*l3+l4);
end
toc

y=cos(2.*pi.*x);
plot(x,U,'r*');
hold on
plot(x,z1,'bo')
hold on
plot(x,y);
xlabel('x');ylabel('y')
legend('numerove','rung-kutta','exc')
