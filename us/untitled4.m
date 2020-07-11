M1=1;
M2=2;
C=1;
a=0.5;
omegao=linspace(0,1);
d=-(4*(M1.^2 + M2.^2 + (M1.*M2.*(2*C.^2 - 2*C.*M1.*omegao.^2 - 2.*C.*M2.*omegao.^2 + M1.*M2.*omegao.^4))./C.^2).^(1./2).*((C.*(M1 + M2 + (M1.^2 + M2.^2 + (M1.*M2.*(2*C.^2 - 2.*C.*M1.*omegao.^2 - 2.*C.*M2.*omegao.^2 + M1.*M2.*omegao.^4))/C.^2).^(1./2)))./(M1.*M2)).^(1./2))./(C.*a.*pi.*(1 - (2.*C.^2 - 2.*C.*M1.*omegao.^2 - 2.*C.*M2.*omegao.^2 + M1.*M2.*omegao.^4).^2./C.^4).^(1/2));
plot(omegao,d)