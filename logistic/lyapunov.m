x=0.5;
u=2.8:0.0001:3.6;
l=length(u);
y=0;
N=300;
for j=1:N
	x=u.*(x-x.^2);
	df=log(abs(u-2*u.*x));
	y=y+df;
end
z=zeros(1,l);
plot(u,y/N);
hold on
plot(u,z);
grid on;
title('李雅普诺夫指数')
