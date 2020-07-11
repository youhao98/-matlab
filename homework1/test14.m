clear all;clc
f=@(x)x.^2-5;
df=@(x) 2.*x;
x0=2.0;
tol=1e-10;
i=0;
dx=1;
while (dx>tol)
	i=i+1
	x1=x0-f(x0)./df(x0);
	dx=abs(x1-x0);
	x0=x1;
end
x1
