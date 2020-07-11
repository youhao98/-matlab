syms t x y a b
[x y]=dsolve('Dx=-0.73*y,Dy=0.34*x','x(0)=a,y(0)=b')
disp(x,y)

