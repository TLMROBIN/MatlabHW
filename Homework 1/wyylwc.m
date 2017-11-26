function d_deltaF=wyylwc(m1,m2,R,deltam1,deltam2,deltaR)
syms xm1 xm2 xR
G=6.67e-11;
F=(G*xm1*xm2)/(xR^2);
dF=(((diff(F,xm1,1)*deltam1)^2)+((diff(F,xm2,1)*deltam2)^2)+((diff(F,xR,1)*deltaR)^2))^0.5;
deltaF=subs(dF,{xm1,xm2,xR},{m1,m2,R});
d_deltaF=double(deltaF);
end