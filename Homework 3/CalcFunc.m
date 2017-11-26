function CalcFunc=CalcFunc(func)   %输入的是一个字符串
Func=sym(func);     
s=regexp(findsym(Func),',','split');%提取全部自由变量变为一个数组
s1=s;  %用来做input说明的变量
CalcFunc=Func ;
for i=1:length(s)
    s1(i)=strcat('输入',s1(i)) ;
    CalcFunc=subs(CalcFunc,char(s(i)),input(char(s1(i)))) ;
end