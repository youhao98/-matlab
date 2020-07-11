 clear
clc
n=4;
h0=(100-0)/n;h=h0;m=0;
y(1)=1;y(n+1)=2;y0(3)=33;n=n./2;
while abs(y(n+1)-y0(3))>((1e-8)/15)
 n=n*2;x=0:h:100;
 for k=1:n
 k1=tfb(x(k),y(k));
 k2=tfb((x(k)+h/2),(y(k)+h*k1/2));
 k3=tfb((x(k)+h/2),(y(k)+h*k2/2));
 k4=tfb((x(k)+h),(y(k)+h*k3));
 y(k+1)=y(k)+(h/6)*(k1+2*k2+2*k3+k4);
 end
 h=h/2;x0(1)=x(n);x0(2)=x(n)+h;y0(1)=y(n);
 for k=1:2
 k1=tfb(x0(k),y0(k));
 k2=tfb((x0(k)+h/2),(y0(k)+h*k1/2));
 k3=tfb((x0(k)+h/2),(y0(k)+h*k2/2));
 k4=tfb((x0(k)+h),(y0(k)+h*k3));
 y0(k+1)=y0(k)+(h./6)*(k1+2*k2+2*k3+k4);
 end
 m=m+1;
end
[x1 y1]=ode45('tfb',[0 100],[1]);
plot(x,y,'r-',x1,y1,'b*')
