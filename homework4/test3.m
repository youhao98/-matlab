%test3.m
x=0:0.01:1;
y0=legendreP(0,x);
y1=legendreP(1,x);
y2=legendreP(2,x);
y3=legendreP(3,x);
plot(x,y0(1,:),'g*',x,y1(1,:),'b+',x,y2(1,:),'k+',x,y3(1,:),'go')
xlabel('x')
ylabel('y')
legend('P_0(x)','P_1(x)','P_2(x)','P_3(x)')
