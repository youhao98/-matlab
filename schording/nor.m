function phi=nor(phi,h)
norm=sum(phi.*phi);
norm=1./sqrt(h.*norm);
phi=norm.*phi;