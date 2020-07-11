clear all
f=@(x)exp(x);
a=0;b=1;
h=0.00001;
tic
x=a:h:b;
N=length(x);
ff=f(x);
ff(1)=0.5.*ff(1);
ff(N)=0.5.*ff(N);
result=sum(ff).*h
toc
