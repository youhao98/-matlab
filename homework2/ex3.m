clc;clear all;

dt=0.01;
t=0:dt:25;
n=length(t);
x(1)=pi/2;
y(1)=0;

for i=1:1:n-1
	x(i+1)=x(i)+dt.*ex3x(t(i),x(i),y(i))+0.5.*dt.^2.*(ex3xx(t(i),x(i),y(i)).*ex3x(t(i),x(i),y(i))+ex3xy(t(i),x(i),y(i)).*ex3y(t(i),x(i),y(i)));
	y(i+1)=y(i)+dt.*ex3y(t(i),x(i),y(i))+0.5.*dt.^2.*(ex3yx(t(i),x(i),y(i)).*ex3x(t(i),x(i),y(i))+ex3yy(t(i),x(i),y(i)).*ex3y(t(i),x(i),y(i)));
end
plot(t,x)
