syms C M1 M2 K a omegao omegaa
K=solve(omegao-sqrt(C/(M1*M2)*((M1+M2)-sqrt(M1^2+M2^2+M1*M2*cos(K*a)))),K)
cos(K*a)
sin(K*a)