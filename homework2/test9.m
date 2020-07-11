syms x y;
y=dsolve('Dy=-x*y','y(0)=1.0','x');
disp(y)
