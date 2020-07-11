clc;clear all
t=0:0.01:2000;
n=length(t);
dt=t(2)-t(1);
y(1)=1;
x(1)=1;

for i=1:1:n-1
	x(i+1)=x(i)+dt.*ex2dx(t,x(i),y(i));
    y(i+1)=y(i)+dt.*ex2dy(t,x(i),y(i));
end

plot(x,y)