function jifenzhi = calculate(func,lowlim,uplim,jingdu)
jiange=(uplim-lowlim)/jingdu;%����ÿһ�����εĸ�
jifenzhi=0;
for i = 1:jingdu;
    jifenzhi=jifenzhi+jiange*(subs(func,'x',lowlim)+subs(func,'x',(lowlim+jiange)))*0.5%�ϵ׼��µ׵ĺͳ˸߳��Զ�
    lowlim=lowlim+jiange
end

