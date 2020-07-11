clc;clear all;
x=linspace(0,3,100);
h=x(2)-x(1);
n=length(x);
y(1,1)=1;
y(2,1)=1;
for i=1:1:n-1
        y(1,i+1)=y(1,i)+h.*fx1(x(i),y(1,i));
	y(2,i+1)=y(2,i)+h.*fx1(x(i),y(2,i))+0.5.*h.^2.*(-y(2,i)+fx1(x(i),y(2,i)).*(-x(i)));
end
y_exact=exp(-0.5.*x.^2);
y_euler=y(1,:);
y_taylor=y(2,:);
plot(x,y_exact,'r*','MarkerSize',5)
hold on
plot(x,y_euler,'b')
plot(x,y_taylor,'k')
legend('y_{exat}','y_{euler}','y_{tayler}')

