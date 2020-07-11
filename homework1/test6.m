clear;clc
syms x y z
F=[3*x-cos(x*y)-5
x^280*(y+0.5)^2+sin(z)
exp(-x*y)+20*z+10];
JF=jacobian(F,[x,y,z])
