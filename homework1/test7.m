clear all
f=@(x)exp(x);
a=0;b=1;
h=0.00001;
x=a:h:b;
N=length(x);
sum1=0;
tic
for i=2:1:N-1
	sum1=sum1+f(x(i));
end
sum1=(sum1+0.5.*(f(x(1))+f(x(N)))).*h
toc
