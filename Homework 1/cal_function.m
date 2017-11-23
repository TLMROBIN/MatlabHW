%-计算给定函数的值
%-输入：cal_function(f,vars,values)
%   f：要输入的函数，符号形式
%   vars：函数中存在的变量，如{'a','b','c','d'}
%   values：函数中变量的值，并与vars中的变量一一对应，如{0.1,1e-2,1,3.42}
%-输出：计算得到的函数值（若vars和dvars大小不同，返回0）
%-郑晨发 201711160114

function res = cal_function(f,vars,values)
res=0;
if size(vars)==size(values)
    res=double(subs(f,vars,values));
else
    fprintf('变量和变量值中的元素必须一一对应且集合大小相同');
end
end