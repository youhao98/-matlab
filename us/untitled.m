ome=linspace(0,1.000,10000);
g=10./sqrt(1-ome.^2);
plot(ome,g)
set(gca,'Ylim',[0 50])
set(gca,'Xlim',[0 1.3])
set(gca,'XTick',[1])
set(gca,'YTick',[0 100])
ylabel('g(\omega)')
set(gca,'XTickLabel',['\omega_m'])