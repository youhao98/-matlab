clc;clear all;
x=linspace(0,3,100);
h=x(2)-x(1);
n=length(x);
y(1)=1;
for i=1:1:n-1
	y(i+1)=y(i)+h.*fx1(x(i),y(i));
end
y_exact=exp(-0.5.*x.^2);
plot(x,y_exact,'r')
hold on
plot(x,y)
