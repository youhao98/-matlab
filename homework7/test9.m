% test9.m
clc;clear all
n=1000000;

s=1000;
g=0;
for i=1:n
	x=rand(1,s);
	y=max(x);
	g_1=log(s.*abs(log(y)));
	g=g+g_1;
end
G=g/n
