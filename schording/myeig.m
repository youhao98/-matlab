function E=myeig(u,h)	
E=0;
for j=2:length(u)
	E=E+(u(j)-u(j-1))^2/h;
end