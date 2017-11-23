syms m1 m2 R dm1 dm2 dR;
F=sym('m1*m2*6.67*10^-11/R^2');
e=wucha(F,m1,m2,R,dm1,dm2,dR);
jieguo=fangcheng(e,5.9*10^24,2*10^30,1.5*10^11,0.1*10^24,0.2*10^30,0.01*10^11);
jieguo