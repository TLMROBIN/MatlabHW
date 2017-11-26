%请输入您想求的函数作为输入，四个输出从前到后分别是函数的值，函数的总误差，函数的公式，函数的总误差公式
%真的超级好用，输入文本或者符号变量都行，后面输入的变量的值和变量误差的值请根据打出的变量顺序输入一个等长度的矩阵
%因为主程序也对输入没啥要求，直接调用这个函数就行了，一条龙服务，我就不编主程序了
function [resultf,resultd,gravity,result0]=delta(funtion)
typestr=isa(funtion,'char');
typesym=isa(funtion,'sym');
if typestr==1;
    funtion=sym(funtion);
else
    if typesym==0;
        funtion=num2str(funtion);
    end
end
gravity=sym(funtion);
vars=symvar(gravity);
display('enter matrix of value of variety accroding to the matrix below')
display(vars)
varsv=input('=');
display('enter matrix of delta of variety accroding to the matrix below')
display(vars)
deltas=input('=');
result=sym(ones(1,length(vars)));
resultf=subs(gravity,vars,varsv);
var=diff(gravity,vars,1);
deltasum=sym([deltas;var]);
i=1;
while i<=length(deltas)
    result(i)=deltasum(1,i)*deltasum(2,i);
    i=i+1;
end
result0=sum(result);
resultd=subs(gravity,vars,varsv);






    
    