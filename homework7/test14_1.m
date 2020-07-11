function f=test14_1(x1,x2)
mu1=0;
mu2=0;
sigma1=2;
sigma2=3;
f=1./(sqrt(2.*pi).*sigma1.*sigma2).*exp(-0.5.*(((x1-mu1)./sigma1).^2+((x2-mu2)./sigma2).^2));