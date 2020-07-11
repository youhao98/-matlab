%test1.m
clc;clear all;
x=0.1;
ll=10;
n(1:ll+1)=0:1:ll;
pl(1)=0;
pl(2)=x;

for i=2:1:length(n)-1
	pl(i+1)=((2.*i+1).*x.*pl(i)-i.*pl(i-1))./(1+1);
end

plot(n,pl,'*-')
xlabel('n');
ylabel('p_{n}(x)')
legend('x=0.1')
