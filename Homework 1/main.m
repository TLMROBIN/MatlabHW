syms dm1 dm2 dR m1 m2 R G
F=gravitation(m1,m2,R)
dF=wucha(F,dm1,dm2,dR)
eval(subs(dF,{dm1,dm2,dR,m1,m2,R,G},{0.1e24,0.2e30,0.01e11,5.9e24,2e30,1.5e11,6.67e-11}))
 
