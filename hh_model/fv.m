function dv=fv(t,v,m,h,n,k)
dv=(-36*n.^4.*(v +72) - 120*m.^3.*h.*(v-55)-0.3.*(v+50) + iapp(t,k))/1;
