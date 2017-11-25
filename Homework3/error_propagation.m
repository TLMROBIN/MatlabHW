function [e]=error_propagation(m1_,m2_,R_,dm1_,dm2_,dR_)
syms m1 m2 R G dm1 dm2 dR e
G=sym(6.67*10^-11);
F=sym(G*m1*m2/R^2);
m11=diff(F,m1,1);
m21=diff(F,m2,1);
R1=diff(F,R,1);
%求F关于m1,m2,R的偏导
e=sqrt((m11*dm1)^2+(m21*dm2)^2+(R1*dR)^2);
%误差e的表达式
e=subs(e,m1,m1_);
e=subs(e,m2,m2_);
e=subs(e,R,R_);
e=subs(e,dm1,dm1_);
e=subs(e,dm2,dm2_);
e=subs(e,dR,dR_);
%代入数值
e=double(e);