function F=yl(m1,m2,r)
G=6.67*10^(-11);
syms a b c;
f1=G*a*b/c^2;
F=subs(f1,{a,b,c},{m1,m2,r});