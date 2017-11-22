%计算恒星光度
mass=linspace(0.1,30,1000);%生成质量
for n=1:1000
    if mass(n)<=0.43
        luminosity(n)=0.23*mass(n)^2.3
    elseif 0.43<mass(n)<=2
            luminosity(n)=mass(n)^4
    elseif 2<mass(n)<=20
            luminosity(n)=1.5*mass(n)^3.5
    else
            luminosity(n)=3200*mass(n)
    end%将恒星按质量归类并计算光度
end%把每一个值顺下来
result=[mass;luminosity]%输出结果的两行
display(result)