c=0;
while c==0
    x=round(rand(1,3)*1000000000000);
    if x(1)./(x(2)+x(3))+x(3)./(x(1)+x(2))+x(2)./(x(1)+x(3))==4
        x
        c=2
    end
end