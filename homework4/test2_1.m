%test2_1.m
clc;clear all;
x=2;
ll=14;
n(1:ll+1)=0:1:ll;
jl(ll+1)=0;
jl(ll)=1e-20;

for i=length(n)-1:-1:2
        jl(i-1)=((2.*(i-1))./x).*jl(i)-jl(i+1);
end
j(1)=0.223890779141236;
j(2)=0.576724807756874;
j(3)=0.352834028615638;
j(4)=0.128943249474402;
j(5)=0.033995719807568;
j(6)=0.007039629755872;
j(7)=0.001202428971790;
j(8)=0.000174944074868;
j(9)=0.000022179552288;
j(10)=0.000002492343435;
j(11)=0.000000251538628;
j(12)=0.000000023042848;
j(13)=0.000000001932695;
j(14)=0.000000000149494;
j(15)=0.000000000010729;
jl1=(j(2)./jl(2)).*jl;
subplot(2,1,1);plot(n,jl,'-*');legend('逆向递推')
subplot(2,1,2);
plot(n,j,'r-o');
hold on
plot(n,j,'b*');
legend('准确解','data1')