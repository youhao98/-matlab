f=@(x)sin(x);
h=0.01;
x=1;
format long
diff_1_3piont_cnetre=(f(x+h)-f(x-h))./(2.*h)
diff_1_2piont_forward=(f(x+h)-f(x))./h
diff_1_2piont_backward=(f(x)-f(x-h))./h
diff_2_3piont_centre=(f(x+h)-2.*f(x)+f(x-h))./(h.^2)
