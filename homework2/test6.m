clc;clear all
f1=@(p) p;
f2=@(y)-4.*pi.^2.*y;

x=0:0.01:2;
h=x(2)-x(1);
p(1)=0;
y(1)=1;

for i=1:1:length(x)-1
	y(i+1)=y(i)+h.*f1(p(i));
	p(i+1)=p(i)+h.*f2(y(i));
end

y_exc=cos(2.*pi.*x);
plot(x,y,'r*')
hold on
plot(x,y_exc)


