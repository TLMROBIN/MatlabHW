function dFunc=dFunc(func)  %输入的是一个字符串
Func=sym(func);    
s=regexp(findsym(Func),',','split');%提取全部自由变量变为一个数组
ds=s;  %做对应的ds
dFunc=0;
for i=1:length(s)
    ds(i)=strcat('d',ds(i));  %建立变量名ds
    dFunc=diff(Func,char(s(i)),1)^2*char(ds(i))+dFunc;
end
dFunc=sqrt(dFunc);
simplify(dFunc);
