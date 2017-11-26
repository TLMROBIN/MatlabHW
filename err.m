function e=err(dm1,dm2,dr)
F = sym('m1*m2*G/r^2 ');
e1=diff(F,'m1',1)*dm1;
e2=diff(F,'m2',1)*dm2;
e3=diff(F,'r',1)*dr;
e=e1+e2+e3;
