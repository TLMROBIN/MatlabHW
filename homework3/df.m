function DF=df(m1,m2,r,dm1,dm2,dr)
G=6.67*10^(-11);
syms a b c da db dc;
f1=G*a*b/c^2;
f2=(diff(f1,a,1)*da)^2+(diff(f1,b,1)*db)^2+(diff(f1,c,1)*dc)^2;
DF=subs(f2,{a,b,c,da,db,dc},{m1,m2,r,dm1,dm2,dr});