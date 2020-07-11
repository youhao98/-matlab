clear all
format long
f=@(x)exp(x);
a_1=300;b_1=500000;
m=a_1:50:b_1;
err=m;
c=length(m);
for j=1:1:c
	a=0;b=1;
	N=m(j)+1;
	x=linspace(a,b,N);
	h=x(2)-x(1);
	sum1=0;
	c=2;
	for i=2:1:N-1
	       if(c==2)
	                c=4;
	        else
	                c=2;
	        end
	        sum1=sum1+c.*f(x(i));
	end
	sum1=(sum1+(f(x(1))+f(x(N)))).*h./3;
	err(j)=abs(sum1-exp(1)+1);
	N=0;
end
m=1./m;
plot(m,err,'r*-')
