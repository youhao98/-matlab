syms x
q=int(x.^3+sin(x),1,3)
vpa(q,10)
q1=quad(@(x)x.^3+sin(x),1,3)
vpa(q1,10)
q2=quadl(@(x)x.^3+sin(x),1,3)
vpa(q2,10)
