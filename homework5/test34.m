%test34.m
A=[8 1 6;3 5 7;4 9 2]
b=[1 2 3]'
[L U p]=lu(A)
x=U\(L\p*b)
