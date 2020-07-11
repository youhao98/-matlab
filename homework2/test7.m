clc;clear all;
f=@(y)-y;
x=linspace(0,10,100);
h=x(2)-x(1)
n=length(x);
y(1)=1;
y(2)=1-h+0.5.*h.^2;
for i=1:1:n-2
	y(i+2)=y(i)+2.*h.*f(y(i+1));
end

y_exc=exp(-x);
plot(x,y_exc,'r*')
hold on
plot(x,y)
