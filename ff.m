function LoverL0=ff(MoverM0)
for n=1:length(MoverM0);
    if MoverM0(n)<=0.43
    LoverL0(n)=0.23.*MoverM0(n).^2.3;
    elseif  MoverM0(n)<=2 & MoverM0(n)>0.43
        LoverL0(n)=MoverM0(n).^4;
    elseif MoverM0(n)<=20 & MoverM0(n)>2;
            LoverL0(n)=1.5.*MoverM0(n).^3.5;
        else
            LoverL0(n)=3200.*MoverM0(n);
    end
end
