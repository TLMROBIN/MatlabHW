%-计算给定函数的误差传递函数
%-输入：diff_function(f,vars,dvars)
%   f：要输入的函数，符号形式
%   vars：函数中存在误差的变量，以行矩阵形式输入，如['a','b','c','d']
%   dvars：函数中变量的误差，以行矩阵形式输入，并与vars中的变量一一对应，如[0.1,1e-2,1,3.42]；若无误差，以0占位
%-输出：计算得到的误差传递函数（若vars和dvars大小不同，返回0）
%-郑晨发 201711160114

function df_sqrted = diff_f(f,vars,dvars)
df=0;
if size(vars)==size(dvars)
    for n=1:length(vars)
        df=df+(diff(f,vars(n),1)*dvars(n))^2;
    end
else
    fprintf('变量矩阵和变量误差矩阵中的元素必须一一对应且大小相同');
end
df_sqrted=simplify(sqrt(df));
end
