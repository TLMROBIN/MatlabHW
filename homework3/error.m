clear
function [E] = error_1(m10,m20,R0,dm10,dm20,dR0)
syms dm1 dm2 dR m1 m2 R G E E_2
G = sym(6.67*10^-11);
F = sym(G*m1*m2/R^2);
d1 = diff(F,m1,1);
d2 = diff(F,m2,1);
d3 = diff(F,R,1);
%求各项偏微分
E_2 = (d1*dm1)^2+(d2*dm2)^2+(d3*dR)^2;
E = sqrt(E_2);
%求误差传递表达式
E = subs(E,m1,m10);
E = subs(E,m2,m20);
E = subs(E,R,R0);
E = subs(E,dm1,dm10);
E = subs(E,dm2,dm20);
E = subs(E,dR,dR0);
%替换各项
end