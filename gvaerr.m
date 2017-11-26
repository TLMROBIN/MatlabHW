function gvaerrors = gvaerr(m1,m2,r,dm1,dm2,dr)
%function gvaerrors = gvaerr(m1,m2,r,dm1,dm2,dr),返回�?��运用误差传�?公式计算得出的万有引力误差�?�?
%输入变量说明�?
%m1,dm1 天体1质量及误�?
%m2,dm2 天体2质量及误�?
%r,dr 两天体之间的距离及误�?
syms G M1 M2 R dM1 dM2 dR;
func = sym('G*M1*M2/(R^2)');
sub_func = sym(((diff(func,M1)*dM1)^2+(diff(func,M2)*dM2)^2+(diff(func,R)*dR)^2)^0.5);
gvaerrors = subs(sub_func,{G,M1,M2,R,dM1,dM2,dR},{6.67e-11,m1,m2,r,dm1,dm2,dr});
gvaerrors = vpa(gvaerrors);