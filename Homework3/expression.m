function [F]=expression(m1_,m2_,R_)
syms m1 m2 R G
G=sym(6.67*10^-11);
F=sym(G*m1*m2/R^2);
F=subs(F,m1,m1_);
F=subs(F,m2,m2_);
F=subs(F,R,R_);
F=double(F);