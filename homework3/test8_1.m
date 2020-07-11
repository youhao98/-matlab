% test8_1.m
clc;clear all
global e1;
tol=1e-6;de=0.0001; e1=-0.9100;
xturn=-sqrt(2*(e1+1));
[x1,UL]=ode45(@test,[-1,xturn],[0 0.0001]);
[x2,UR]=ode45(@test,[1,xturn],[0 0.0001]);
f0=UL(length(x1),2)-UR(length(x2),2);
f01=UL(length(x1),1)-UR(length(x2),1);
while abs(de)>tol
    e1=e1+de;
    xturn=-sqrt(2*(e1+1));
    [x1,UL]=ode45(@test,[-1, xturn],[0 0.0001]);
    [x2,UR]=ode45(@test,[1 xturn],[0 -0.0001]);
    f1=UL(length(x1),2)-UR(length(x2),2);
    f11=UL(length(x1),1)-UR(length(x2),1);
    if(f0*f1<0 & f01*f11<0)
        e1=e1-de;
        de=de/2;
    end
end 
e1
c=2;
sum=0;
n1=length(x1);
for i=2:1:n1-1
    if(c==2)
         c=4;
    else
        c=2;
    end
    sum=sum+c.*UL(i,1).^2;
end
sum=(sum+(UL(1,1).^2+UL(n1,1).^2)).*abs(x1(1)-x1(2));
c=2;
n2=length(x2);
for i=2:1:n2-1
    if(c==2)
         c=4;
    else
        c=2;
    end
    sum=sum+c.*UR(i,1).^2;
end
sum=(sum+(UR(1,1).^2+UR(n1,1).^2)).*abs(x2(1)-x2(2));
UL=UL/sum;
UR=UR/sum;

plot(x1,UL(:,1),x2,UR(:,1))