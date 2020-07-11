syms u v w y z
S=solve(u*y^2+v*z+w,y+z+w,y,z)
disp(S.y)
disp(S.z)
