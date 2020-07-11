function ex3y=ex3y(t,x,y)

global g l k m;
m=0.05;
l=1.016;
g=9.81;
k=0.02;

ex3y= -g/l*sin(x)-k/m*y;