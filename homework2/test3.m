clc;clear all
x=linspace(0,3,100);
h=x(2)-x(1);
n=length(x);
y(1,1)=1;
y(2,1)=1;
y(3,1)=1;
y(3,2)=y(3,1)+h.*fx1(x(1),y(2,1))+0.5.*h.^2.*(-y(2,1)+fx1(x(1),y(2,1)).*(-x(1)));
%y(3,2)=y(1,1)+h.*fx1(x(1),y(1,1));
for i=1:1:n-1
	y(1,i+1)=y(1,i)+h.*fx1(x(i),y(1,i));%euler
	y(2,i+1)=y(2,i)+h.*fx1(x(i),y(2,i))+0.5.*h.^2.*(-y(2,i)+fx1(x(i),y(2,i)).*(-x(i)));%tayler
	if(i>1)
		y_temp=y(3,i)+0.5*h.*(3.*fx1(x(i),y(3,i))-fx1(x(i-1),y(3,i-1)));
		y(3,i+1)=y(3,i)+0.5*h.*(fx1(x(i),y(3,i))+fx1(x(i+1),y_temp));
	end
end

y_exact=exp(-0.5.*x.^2);
y_eular=y(1,:);
y_tayler=y(2,:);
y_adams=y(3,:);
plot(x,y_exact,'r*','MarkerSize',5)
hold on
plot(x,y_eular,'b')
hold on
plot(x,y_tayler,'g')
hold on
plot(x,y_adams,'r')
legend('y_{exact}','y_{eular}','y_{tayler}','y_{adams}')

