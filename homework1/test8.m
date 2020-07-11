clear all
f=@(x)exp(x);
a=0;b=1;
N=100001;
x=linspace(a,b,N);
h=x(2)-x(1);
sum1=0;
tic
c=2;
for i=2:1:N-1
	if(c==2)
		c=4;
	else
		c=2;
	end
	sum1=sum1+c.*f(x(i));
end
sum1=(sum1+(f(x(1))+f(x(N)))).*h./3
toc
