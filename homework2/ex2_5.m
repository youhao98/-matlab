clc;clear all
t=0:0.01:2000;
n=length(t);
dt=t(2)-t(1);
y(1)=1;
x(1)=1;

for i=1:1:n-1
	k1=ex2dx(t(i),x(i),y(i));
    l1=ex2dy(t(i),x(i),y(i));
	k2=ex2dx(t(i)+dt./2,x(i)+dt./2.*k1,y(i)+dt./2.*l1);
    l2=ex2dy(t(i)+dt./2,x(i)+dt./2.*k1,y(i)+dt./2.*l1);
    k3=ex2dx(t(i)+dt./2,x(i)+dt./2.*k2,y(i)+dt./2.*l2);
    l3=ex2dy(t(i)+dt./2,x(i)+dt./2.*k2,y(i)+dt./2.*l2);
    k4=ex2dx(t(i)+dt,x(i)+dt.*k3,y(i)+dt.*l3);
    l4=ex2dy(t(i)+dt,x(i)+dt.*k3,y(i)+dt.*l3);
    x(i+1)=x(i)+dt./6.*(k1+2*k2+2*k3+k4);
    y(i+1)=y(i)+dt./6.*(l1+2*l2+2*l3+l4);
end

plot(x,y)