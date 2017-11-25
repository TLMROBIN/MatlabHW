function error=grav_error(m1,m2,r,dm1,dm2,dr)
syms M1 M2 R
F=6.67*10^(-11)*M1*M2/R^2;
error=((diff(F,M1)*dm1)^2+(diff(F,M2)*dm2)^2+(diff(F,R)*dr)^2)^(0.5);
error=subs(error,'M1',m1);
error=subs(error,{ M1,M2,R},{m1,m2,r})
display(double(error))

