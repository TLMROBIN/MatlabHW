clc,clear
m1=input('enter a value for m1');
m2=input('enter a value for m2');
r=input('enter a value for r');
F4=gra(m1,m2,r)
dm1=input('enter a value for dm1');
dm2=input('enter a value for dm2');
dr=input('enter a value for dr');
e=err(dm1,dm2,dr);
e=subs(e,'m1',m1);
e=subs(e,'m2',m2);
e=subs(e,'r',r);
e=subs(e,'G',6.67*10^-11)