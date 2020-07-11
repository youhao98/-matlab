% test1.m
clc;clear all

n=10000000;
x=zeros(1,n);
i=1;
while i<=n
	x1=rand;
	y1=rand;
	omega=(1-1/2*x1^2);
	if y1<omega
		x(i)=x1;
		i=i+1;
	end
end
X=linspace(0,1,100);
Omega=6/5*(1-0.5*X.^2);
Y=hist(x,100)./n*100;
bar(X,Y,1)
hold on
plot(X,Omega,'r-','LineWidth',2)
ylabel('\omega(x)')
xlabel('x')