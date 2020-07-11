x=linspace(1,5,1000);
y=2.*x.^2-1-2.*x.*(x.^2-1).^0.5;
plot(x,y);
%axis([-pi pi 0 25]);
%hold on
%plot(x,z);
%set(gca,'XTick',-pi:pi:pi)
%set(gca,'YTick',-1:50:51)
%set(gca,'XTickLabel',{'-pi/a','0','pi/a'})
grid on
xlabel('\omega/\omega_{max}')
ylabel('e^{-\mu a}')
title('衰减系数')

