function [e] = wucha(E1,m1,m2,R,dm1,dm2,dR);
e_2=(diff(E1,m1,1)*dm1)^2+(diff(E1,m2,1)*dm2)^2+(diff(E1,R,1)*dR)^2;
e=e_2^0.5;
end

