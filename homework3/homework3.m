%homework3
M1 = input('M1= ');
M2 = input('M2= ');
R = input('R= ');
dM1 = input('error of M1=');
dM2 = input('error of M2=');
dR = input('error of M3=');
F = gravity(M1,M2,R);
dF = Gerror(dM1,dM2,dR,M1,M2,R);
fprintf(' F= %g \n error= %g',F,dF);