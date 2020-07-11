clc;clear all
t=0:0.01:100;
n=length(t);
dt=t(2)-t(1);
x(1)=5;
y(1)=10;
z(1)=20;

for i=1:1:n-1
	x(i+1)=x(i)+dt.*odex(t,x(i),y(i),z(i));
	y(i+1)=y(i)+dt.*odey(t,x(i),y(i),z(i));
	z(i+1)=z(i)+dt.*odez(t,x(i),y(i),z(i));
end

plot3(x,y,z)
