%fucntion1
function F=gravity(M1,M2,R)
syms m1 m2 r G
f = G*m1*m2/r^2;
F = subs(f,{m1,m2,r,G},{M1,M2,R,6.67*10^-11});
F = vpa(F);