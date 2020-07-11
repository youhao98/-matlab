x=linspace(-pi,pi,500);
y=11+(101+20.*cos(x)).^0.5;
z=11-(101+20.*cos(x)).^0.5;
plot(x,y);
axis([-pi pi 0 25]);
hold on
plot(x,z);
set(gca,'XTick',-pi:pi:pi)
set(gca,'YTick',-1:50:51)
set(gca,'XTickLabel',{'-pi/a','0','pi/a'})
grid on
xlabel('K')
ylabel('\omega')
title('色散关系')
