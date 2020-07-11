clc;clear all
t=0:0.01:2000;
n=length(t);
dt=t(2)-t(1);
y(1)=1;
x(1)=1;

for i=1:1:n-1
	if(i>1)
		x_temp=x(i)+0.5*dt.*(3.*ex2dx(t(i),x(i),y(i))-ex2dy(t(i-1),x(i-1),y(i-1)));
        y_temp=y(i)+0.5*dt.*(3.*ex2dx(t(i),x(i),y(i))-ex2dy(t(i-1),x(i-1),y(i-1)));
		x(i+1)=x(i)+0.5*dt.*(ex2dx(t(i),x(i),y(i))+ex2dx(t(i),x_temp,y_temp));
        y(i+1)=y(i)+0.5*dt.*(ex2dy(t(i),x(i),y(i))+ex2dy(t(i),x_temp,y_temp));
    else
        	x(i+1)=x(i)+dt.*ex2dx(t,x(i),y(i));
            y(i+1)=y(i)+dt.*ex2dy(t,x(i),y(i));
    end
end

plot(x,y)