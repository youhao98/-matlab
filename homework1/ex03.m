clear all
syms x y;
z=fx3(x,y);
zx=diff(z,x);
zy=diff(z,y);
[X,Y]=solve(zx,zy,x,y);
A=diff(z,x,2);
B=diff(diff(z,x),y);
C=diff(z,y,2);
H=A*C-B^2;
h=inline(H,'x','y');
h1=h(X,Y);
if h1>0
	fprintf('x= %8.4f ,y= %8.4f 是函数的极小值点 \n',X,Y)
elseif h1<0
	fprintf('x= %8.4f ,y= %8.4f 是函数的极大值点 \n',X,Y)
else
	fprintf('x= %8.4f ,y=58.4f 不是函数的极值点 \n',X,Y)
end
ezsurfc(z,[-10 10 -10 10])
camlight, lighting gouraud
alpha(0.5)
