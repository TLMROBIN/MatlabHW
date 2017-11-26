%代值计算两天体万有引力及误差
format long
syms m1 m2 r G M1 M2 R
f=loug(m1,m2,r,G)
F=wuchachuandi(m1,m2,r,G,M1,M2,R,f)
m1=input('请输入第一个天体质量\n');
m2=input('请输入第二个天体质量\n');
r=input('请输入两天体距离\n');
G=6.67*10^(-11);
M1=input('请输入第一个天体质量误差\n');
M2=input('请输入第二个天体质量误差\n');
R=input('请输入两天体距离误差\n');

display('两天体间万有引力为')
f0=subs(f)
display('两天体间万有引力误差为 + -')
F0=subs(F)