function[F]=gravitation(m1,m2,R)
syms m1 m2 R G
F=G*m1*m2/R^2;
end 
