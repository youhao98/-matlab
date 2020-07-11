x=0.9:0.001:2.5;
y=x.^(-12)-x.^(-6);
plot(x,y,'r-');
grid on
xlabel(['r/\sigma'])
ylabel('u(r)/4\epsilon')
