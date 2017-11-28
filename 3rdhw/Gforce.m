function force = Gforce(mass1, mass2, d)
%Gforce 计算两天体间的万有引力
syms m1 m2 R
gravity = 6.67 * 10^-11 * m1 * m2 / R^2; %定义引力公式
gravity = subs(gravity, {m1, m2, R}, {mass1, mass2, d}); %带入天体数据
force = double(gravity);%转化符号变量为浮点数
end