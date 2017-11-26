function [F]=gravitation(m1,m2,r)
G=6.67e-11;
F=(G*m1*m2)/(r^2);
end