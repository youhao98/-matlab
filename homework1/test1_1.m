f=@(x)sin(x);
h=input("请输入步长")
x=1;
format long
diff_1_3piont_cnetre=(f(x+h)-f(x-h))./(2.*h);
diff_1_2piont_forward=(f(x+h)-f(x))./h;
diff_1_2piont_backward=(f(x)-f(x-h))./h;
diff_2_3piont_centre=(f(x+h)-2.*f(x)+f(x-h))./(h.^2);
err_1_3c=abs(diff_1_3piont_cnetre-cos(1))
err_1_2f=abs(diff_1_2piont_forward-cos(1))
err_1_2b=abs(diff_1_2piont_backward-cos(1))
err_2_3c=abs(diff_2_3piont_centre+sin(1))
