function [deltaF]=deltagravitation(m1,m2,r,deltam1,deltam2,deltaR)
syms M1 M2 R
G=6.67e-11;
F=(G*M1*M2)/(R^2);
diffF=sqrt((((diff(F,M1,1)*deltam1)^2)+((diff(F,M2,1)*deltam2)^2)+((diff(F,R,1)*deltaR)^2)));
deltaF=subs(diffF,{M1,M2,R},{m1,m2,r});
finalresult=double(deltaF);
end