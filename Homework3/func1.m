function [ans]=func1(F,G,m1,m2,R)

subs(F,m1,5.9*10^24);
% subs(ans,'dm1',0.1*10^24);
subs(ans,m2,2*10^30);
% subs(ans,'dm2',0.2*10^30);
subs(ans,R,1.5*10^11);
% subs(ans,'dR',0.01*10^11);
subs(ans,G,6.67*10^-11);
end 