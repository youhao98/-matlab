clc;clear all
syms t x y
[x y]=dsolve('Dx=-0.73*y,Dy=0.34*x','x(0)=1,y(0)=1')
t=0:0.01:2000;
X=inline(x,'t');
Y=inline(y,'t');
x=X(t);
y=Y(t);
plot(x,y)
