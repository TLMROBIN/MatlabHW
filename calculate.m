function jifenzhi = calculate(func,lowlim,uplim,jingdu)
jiange=(uplim-lowlim)/jingdu;%计算每一个梯形的高
jifenzhi=0;
for i = 1:jingdu;
    jifenzhi=jifenzhi+jiange*(subs(func,'x',lowlim)+subs(func,'x',(lowlim+jiange)))*0.5%上底加下底的和乘高除以二
    lowlim=lowlim+jiange
end

