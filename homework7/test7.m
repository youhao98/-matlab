% test7.m
clc;clear all

for i=3:8
	n=10.^i;
	I=f7(n);
    disp(['n  =  ',num2str(n)])
    disp(['I  =  ',num2str(I)])
end