clc,clear all;
x=linspace(0,3,100);
h=x(2)-x(1);
n=length(x);
y(1)=1;
for i=1:1:n-1
	k1=fx1(x(i),y(i));
	k2=fx1(x(i)+0.5*h,y(i)+0.5*h.*k1);
	y(i+1)=y(i)+h.*k2;
end
y_exact=exp(-0.5.*x.^2);
plot(x,y_exact,'r*')
hold on
plot(x,y);
legend('y_{exact}','y_{Runge-Kutta2}')