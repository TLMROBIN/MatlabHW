function [dF]=wucha(F,dm1,dm2,dR)
syms dm1 dm2 dR m1 m2 R G
dF=sqrt(((diff(F,m1,1)*dm1)^2+(diff(F,m2,1)*dm2)^2+(diff(F,R,1)*dR)^2));
end