%该子程序计算天体间相互作用力的误差
function delta_F = F_delta(m_1,m_2,R0,deltam_1,deltam_2,deltaR)

%创建公式需要的符号变量
syms G
syms R
syms m1
syms m2
syms delta_m1
syms delta_m2
syms delta_R

%将公式传递给变量
%F_m1为m1的误差传递结果
%F_m2为m2的误差传递结果
%F_R为距离误差传递结果
G = sym('6.67e-11');
F = G*m1*m2/R^2;
F_m1 = (diff(F,m1,1)*delta_m1)^2;
F_m2 = (diff(F,m2,1)*delta_m2)^2;
F_R = (diff(F,R,1)*delta_R)^2;

%将用户输入值植入变量分别计算误差

F_m1 = subs(F_m1,m1,m_1);
F_m1 = subs(F_m1,m2,m_2);
F_m1 = subs(F_m1,R,R0);
F_m1 = subs(F_m1,delta_m1,deltam_1);
F_m1 = subs(F_m1,delta_m2,deltam_2);
F_m1 = subs(F_m1,delta_R,deltaR);

F_m2 = subs(F_m2,m1,m_1);
F_m2 = subs(F_m2,m2,m_2);
F_m2 = subs(F_m2,R,R0);
F_m2 = subs(F_m2,delta_m1,deltam_1);
F_m2 = subs(F_m2,delta_m2,deltam_2);
F_m2 = subs(F_m2,delta_R,deltaR);

F_R= subs(F_R,m1,m_1);
F_R= subs(F_R,m2,m_2);
F_R= subs(F_R,R,R0);
F_R = subs(F_R,delta_m1,deltam_1);
F_R = subs(F_R,delta_m2,deltam_2);
F_R = subs(F_R,delta_R,deltaR);

%计算误差
delta_F = sqrt(F_m1+F_m2+F_R);

end

