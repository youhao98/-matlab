% test7_1.m
clc;clear all
for i=3:7
	n=10^i;
	I_1=f7(n);
	I_2=f7_1(n);
    disp(['n  =  ',num2str(n)])
    disp(['I  =  ',num2str(I_1)])
    disp(['I  =  ',num2str(I_2)])
end
