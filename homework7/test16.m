% test16.m
clc;clear all

N=1000000;

m=0;
o=0;
for i=1:N
	theta=2.*pi.*rand(1,10);
	x=cos(theta);
	s=0;
	for j=1:10
		s=s+x(j);
		if s<0 && s>-1
			m=m+1;
			s=-100;
		end
		if s>5 && s<6
			o=o+1;
			s=100;
		end
	end
end
p_tran=o/N
p_refl=m/N
p_abso=1-p_tran-p_refl
