function  f = gra( m1,m2,r)
F = sym('m1*m2*G/r^2 ');
F = subs(F,'m1',m1);
F = subs(F,'m2',m2);
F = subs(F,'G',6.67*10^-11);
F = subs(F,'r',r);
f = double(F); 
