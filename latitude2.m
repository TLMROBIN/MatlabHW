clear;clc;
mass=linspace(0.1,30,1000);
L0 = 3.845*10^26;
for n = 1:1000
    term=mass(n); 
    if term < 0.43
        L(n)=L0*(term^2.3)*0.23;
    elseif term < 2
        L(n)=L0*term^4;
    elseif term < 20
        L(n)=L0*(term^3.5)*1.5;
    else
        L(n)=L0*term*3200;
    end
end
[mass,L]