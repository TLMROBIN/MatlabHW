function F=grav(m1,m2,r)
syms m1 m2 r
F=6.67*10^(-11)*m1*m2/r^2;
F=subs(F,'m1',5.9*10^24);
F=subs(F,'m2',2*10^30);
F=subs(F,'r',1.50*10^11);
display(double(F))

function error=grav_error(m1,m2,r,dm1,dm2,dr)
syms m1 m2 r dm1 dm2 dr
error=((diff(F,m1)*dm1)^2+(diff(F,m2)*dm2)^2+(diff(F,r)*dr)^2)^(0.5);
error=subs(error,'m1',5.9*10^24);
error=subs(error,'m2',2*10^30);
error=subs(error,'r',1.50*10^11);
error=subs(error,'dm1',0.1*10^24);
error=subs(error,'dm2',0.2*10^30);
error=subs(error,'r',0.01*10^11);
display(double(error))





