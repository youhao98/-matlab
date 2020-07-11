%test37.m
clc;clear all;
A=[1,3
2,2];
k=100;
x=[0;1];
[lambda,x]=power_iteration(A,x,k)
