N=5;
h=zeros(1,8);
k=zeros(1,8);
l=zeros(1,8);
i=0;
h1=1;
h2=1;
h3=1;
h4=1;
h5=1;
h6=1;
h7=1;
h8=2;
k1=1;
k2=1;
k3=1;
k4=1;
k5=1;
k6=1;
k7=1;
k8=1;
l1=1;
l2=1;
l3=1;
l4=1;
l5=1;
l6=1;
l7=1;
l8=1;
for h1=1:N
h(1)=h1	-1;
	for h2=1:N
        h(2)=h2-1;
	       for h3=1:N
               						h(3)=h3-1;
			for h4=1:N
                				h(4)=h4-1;
				for h5=1:N
                    		h(5)=h5-1;
					for h6=1:N
						h(6)=h6-1;
						for h7=1:N
                            h(7)=h7-1;
							for h8=2:N
                                					h(8)=h8-1;
                        for k1=1:N      
                 k(1)=k1-1; 
        for k2=1:N
             k(2)=k2-1;
               for k3=1:N
                    k(3)=k3-1;
                        for k4=1:N
                                  k(4)=k4-1;
                                for k5=1:N
                                           k(5)=k5-1;
                                        for k6=1:N
                                            k(6)=k6-1;
                                                for k7=1:N
                                                       k(7)=k7-1;
                                                        for k8=1:N
                                                            k(8)=k8-1;
                                               for l1=1:N
                                              l(1)=l1-1;        
        for l2=1:N
                                                l(2)=l2-1;
               for l3=1:N
                      l(3)=l3-1;
                        for l4=1:N  
                            l(4)=l4-1;
                                for l5=1:N
                                                l(5)=l5-1;
                                        for l6=1:N
                                                   l(6)=l6-1;
                                                for l7=1:N
                                                          l(7)=l7-1;
                                                        for l8=1:N
                                         l(8)=l8-1;
                                                i=i+1;
                                                A=h.^2+k.^2+l.^2;
C1=B(1)/3;
C2=B(2)/4;
C3=B(3)/8;
C4=B(4)/11;
C5=B(5)/12;
C6=B(6)/16;
C7=B(7)/19;
C8=B(8)/20;
if abs(C1-C2)<0.001&& abs(C3-C4)<0.001 && abs(C5-C6)<0.001 && C7-C8<0.001 && abs(C1-C3)<0.001 && abs(C3-C5)<0.001 && abs(C5-C7)<0.001
	disp(h)
	disp(k)
	disp(l)
	disp(A)
    disp('next')
end

                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
end
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
end

						
							end
						end
					end
				end
			end
		end
	end
end

