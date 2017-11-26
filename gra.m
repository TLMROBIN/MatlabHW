function F=gra(m1,m2,r)
%F=gra(m1,m2,r) 返回万有引力的计算值
%输入变量说明：
%m1 数值型变量
%m2 数值型变量
%r 数值型变量
%注意统一单位
format shortE
syms M1 M2 R G
GRA = sym('G*M1*M2/(R^2)');
F = subs(GRA,{G,M1,M2,R},{6.672E-11,m1,m2,r});
F = double(F);
    
