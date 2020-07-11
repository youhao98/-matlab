function I=f7(n)

x=rand(1,n);
y=1./(1+x.^2);
I=1/n.*sum(y);
