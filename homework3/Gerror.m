%function2
function dF = Gerror(dM1,dM2,dR,M1,M2,R)
syms dm1 dm2 dr m1 m2 r G
f = G*m1*m2/r^2;
df2 = sym(0);
mat = [dm1,dm2,dr,m1,m2,r];
for i=1:3
    di = diff(f,mat(i+3),1)*mat(i);
    df2 = df2 + di^2;
end
df = df2^(1/2);
dF = subs(df,{dm1,dm2,dr,m1,m2,r,G},{dM1,dM2,dR,M1,M2,R,6.67*10^-11});
dF = vpa(dF);