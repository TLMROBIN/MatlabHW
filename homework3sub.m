%N表示的是变量个数
function [Force,Error] = homework3sub(N)

%输入变量
display('请分6次输入m1,m2,R,dm1,dm2,dR的值');
bl = zeros(N);
for i=1:N;
    bl(i)=sym(input('请输入变量'));
end

%定义公式
syms dr dM1 dM2;
F=sym('(G*M1*M2)/(r^2)');
e = sym(((diff(F,'r',1)*dr)^2+(diff(F,'M1',1)*dM1)^2+(diff(F,'M2',1)*dM2)^2)^1/2);

%用subs代换变量
F=subs(F,'G',6.67*10^-11);
F=subs(F,'M1',bl(1));
F=subs(F,'M2',bl(2));
F=subs(F,'r',bl(3));
e=subs(e,'G',6.67*10^-11);
e=subs(e,'M1',bl(1));
e=subs(e,'M2',bl(2));
e=subs(e,'r',bl(3));
e=subs(e,'dM1',bl(4));
e=subs(e,'dM2',bl(5));
e=subs(e,'dr',bl(6));

%得出结果并输出结果
Force = F;
Error = e;
disp('F = '),disp(Force),disp('e = '),disp(Error);

%求情阶段
disp('晚了半小时，写的也不够简洁高效，求助教师兄or河马老师手下留情qwq')
end