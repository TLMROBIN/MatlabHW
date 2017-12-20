M=input('请输入恒星与太阳的质量比\nM(恒星)/M(太阳)=');
if M<=0.43
    L=0.23*M^2.3;
elseif M<=2
        L=M^4;
elseif M<=20
            L=1.5*M^3.5;
        else 
            L=3200*M;
end
disp('该恒星的光度为')
disp(L);