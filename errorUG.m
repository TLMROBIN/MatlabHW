function errorF=errorUG(M1,M2,RR,ErrorM1,ErrorM2,ErrorR)
syms m1 m2 R errorm1 errorm2 errorR
F=6.67*10^-11*m1.*m2/(R.^2);
partialderivativem1=diff(F,m1,1);
partialderivativem2=diff(F,m2,1);
partialderivativeR=diff(F,R,1);
errorFsquare=(partialderivativem1.*errorm1).^2+(partialderivativem2.*errorm2).^2+(partialderivativeR.*errorR).^2
subs(errorFsquare,[m1,m2,R,errorm1,errorm2,errorR],[M1,M2,RR,ErrorM1,ErrorM2,ErrorR])
errorF=sqrt(errorFsquare)