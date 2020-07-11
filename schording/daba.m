%dabafa.m
clc;clear all
global e1;
tol=1e-8;de=0.01;e1=0.1;
n=21;
x=linspace(0,1,n);
h=x(2)-x(1);
xturn=0.5;
iturn=floor((xturn)/h);

for i=1:iturn
    ql(i)=e1;
    sl(i)=0;
end
for i=iturn:n
    j=n-i+1;
    qr(j)=e1;
    sr(i)=0;
end
ur(1)=0;
ur(2)=sqrt(e1*2)*h^2;
ul(1)=0;
ul(2)=sqrt(e1*2)*h^2;

ur=numerove(n-iturn,h,qr,sr,ur);
ul=numerove(iturn,h,ql,sl,ul);

f0=ul(iturn)-ul(iturn-1)+ur(n-iturn)-ur(n-iturn-1);
while abs(de)>tol
	e1=e1+de;
    xturn1=0.5;
    iturn1=floor((xturn1)/h);
    clear ur1 ul1 qr1 ql1 
    for i=1:iturn1+1
        ql1(i)=e1;
        sl1(i)=0;
    end
    for i=iturn1-1:n
        j=n-i+1;
        qr1(j)=e1;
        sr1(i)=0;
    end
    ur1(1)=0;
    ur1(2)=sqrt(e1*2)*h^2;
    ul1(1)=0;
    ul1(2)=sqrt(e1*2)*h^2;

    ur1=numerove(n-iturn1+1,h,qr1,sr1,ur1);
    ul1=numerove(iturn1,h,ql1,sl1,ul1);
    f12=ul(iturn1)*ur1(n-iturn);
    f11=(ul1(iturn1)-ul1(iturn1-1))*(ur1(n-iturn1)-ur1(n-iturn1-1));
    ul1=ul1./ul1(iturn1).*ur1(n-iturn1+1);
    f1=ul1(iturn1)-ul1(iturn1-1)+ur1(n-iturn1)-ur1(n-iturn1-1);%ul(length(ul))-ul(length(ul)-1)+ur(length(ur))-ur(length(ur)-1);%ul(length(ul))-ur(length(ur));
    f13=abs(ur1(n-iturn1)-ur1(n-iturn1-1));
%     f13=ul(iturn1)-ur1(n-iturn);
    	if(f0*f1<0 && f11<0 && f12>0 && abs(f1)<1)
            e1=e1-de;
            de=de/2;
        end 
end
phi=zeros(1,n);
for i=1:iturn1
phi(i)=ul1(i);
end
for i=1:n-iturn1
    phi(i+iturn1)=ur1(n-iturn1-i+1);
end
phi=nor(phi,h);
plot(x,phi)
e1