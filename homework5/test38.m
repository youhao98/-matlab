%test38.m
clear all;clc
A=[1,3
2,2];
B=A^-1;
k=100;
x=[0;1];
[lambda,x]=power_iteration(B,x,k)
