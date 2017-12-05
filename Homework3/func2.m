function [ans]=func2(F,G,m1,m2,R);
syms e2;
e2=(subs(diff(F,m1,1),m1,'dm1'))^2+...
(subs(diff(F,m2,1),m2,'dm2'))^2+...
(subs(diff(F,R,1),R,'dR'))^2;

subs(e2,m1,5.9*10^24);
subs(ans,'dm1',0.1*10^24);
subs(ans,m2,2*10^30);
subs(ans,'dm2',0.2*10^30);
subs(ans,R,1.5*10^11);
subs(ans,'dR',0.01*10^11);
subs(ans,G,6.67*10^-11);
end 