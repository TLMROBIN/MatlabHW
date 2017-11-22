function light=guangdu()
clear;clc;close all;
format long
mass=0;
gap=(30-0.1)/1000;
i=1;
while mass<=30;
    mass=mass+gap;
    if mass<=0.43
        L=0.23*(mass^2.5);
    elseif 0.43<mass<2;
        L=mass^4;
    elseif 2<=mass<20;
        L=1.5*(mass^3.5);
    elseif 20<=mass
        L=3200*mass;
    end
    L
    light(i)=L;
    i=i+1;
end

            