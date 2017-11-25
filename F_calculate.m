%该子程序计算两天体间相互作用
function F = F_calculate(m_1,m_2,R0)

%创建符号变量
syms G
syms R
syms m1
syms m2

%给G赋值并输入F的公式
G = sym('6.67e-11');
F = G*m1*m2/R^2;

%以交互输入值赋予F公式
F = subs(F,m1,m_1);
F = subs(F,m2,m_2);
F = subs(F,R,R0);

end