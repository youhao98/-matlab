% test17.m
clc;clear all

M=1000:50:1500;
s=200:10:400;
n_1=length(M);
n_2=length(s);
for i=1:n_1
	for j=1:n_2
		k(i,j)=test17_1(M(i),s(j));
	end
end
x=max(k)
