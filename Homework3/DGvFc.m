function DF=DGvFc(m1,m2,R,Dm1,Dm2,DR)
syms vm1 vm2 vR
F=6.67*10^(-11)*vm1*vm2/(vR^2);
DF1=((diff(F,vm1)*Dm1)^2+(diff(F,vm2)*Dm2)^2+(diff(F,vR)*DR)^2)^(0.5);
DF=subs(DF1,'vm1',m1);
DF=subs(DF,'vm2',m2);
DF=subs(DF,'vR',R);
DF=double(DF);
display(DF)