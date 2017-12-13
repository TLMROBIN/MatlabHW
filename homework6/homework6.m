function A=homework6(inf,sup,y)%ÊäÈëÑùÀı: 0,pi,@sin
A=0;
   if(sup<=inf)
    A='N/A';
    else
    X_1=linspace(inf,sup,101);
        for cyc1=1:100
    A=A+(y(X_1(cyc1))+y(X_1(cyc1+1)))*0.5*(sup-inf)/100;
        end
   end




