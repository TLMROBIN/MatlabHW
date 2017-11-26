function output=cal_L()
L=zeros(1,1000);
M=linspace(0.1,30,1000);
for i=1:1000;
    m=M(i)
    if m<=0.4
        l=0.23*m^2.3
    elseif m<=2.0
        l=m^4
        elseif m<=20.0
            l=1.5*m^3.5
            elseif m>20.0
                l=3200.0*m
    end
    L(1,i)=l;
end
format long
output=L;