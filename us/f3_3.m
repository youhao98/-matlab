linspace(-pi,pi,500);
y=2.*(1-cos(x)).^0.5;
plot(x,y);
axis([-pi pi 0 3]);
%hold on
%plot(x,z);
set(gca,'XTick',-pi:pi:pi)
set(gca,'YTick',-1:50:51)
set(gca,'XTickLabel',{'-pi/a','0','pi/a'})
grid on
xlabel('K')
ylabel('\omega')
title('色散关系')

