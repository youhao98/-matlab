%test39.m
clear all;clc
A=[1,0,0
0,1,2
0,3,0];
s=-2.3;
k=100;
x=[1;0.2;0];
[lambda,x]=invpowerit(A,x,s,k)
