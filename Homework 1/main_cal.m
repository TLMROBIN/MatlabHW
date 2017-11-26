clear;clc;

func=input('请输入函数表达式(暂不支持复数)：F=','s');
container='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
container2='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_';
container3={'abs','sqrt','imag','conj','round','fix','floor','ceil','rat','rats','rem','gcd','lcm','exp','pow2','log','log2','log10','sign','sin','cos','tan','asin','acos','atan','atan2','sinh','cosh','tanh','asinh','acosh','atanh','min','max','mean','meandian','std','diff','sort','length','norm','sum','prod','cumsum','cumprod','dot','cross','inf','nan','NaN','pi','realmax','realmin','nargin'};
n=1;
svars=[];

while n
    ch=func(n);
    if ~isempty(strfind(container,ch))
        chc=ch;
        chc_er=1;
        for num=n+1:length(func)
            if ~isempty(strfind(container2,func(num)))
                chc=strcat(chc,func(num));
                n=num;
                if sum(strcmp(chc,container3))
                    if num<length(func)
                        if isempty(strfind(container2,func(num+1)))
                            chc_er=0;
                            break;
                        end
                    elseif num==length(func)
                        chc_er=0;
                        break;
                    end
                end
            else
                if sum(strcmp(chc,{'i','j'}))
                    chc_er=0;
                end
                break;
            end
        end
        if ~ismember(sym(chc),svars)&chc_er
            svars=[svars sym(chc)];
        end
    end
n=n+1;
if n>=length(func)
    n=0;
end
end

sfunc=sym(func);
vals=[];
dvals=[];
for var=svars
    val=input(strcat('请输入变量',char(var),'的值：'));
    vals=[vals val];
    dval=input(strcat('请输入变量',char(var),'的误差：'));
    dvals=[dvals dval];
end

fprintf('-表达式%s的值为 %d \n',func,cal_f(sfunc,svars,vals));
fprintf('-表达式%s的误差传递函数为 %s \n',func,diff_f(sfunc,svars,dvals));
fprintf('-表达式%s的误差传递函数值为 %s \n',func,cal_f(diff_f(sfunc,svars,dvals),svars,vals));
