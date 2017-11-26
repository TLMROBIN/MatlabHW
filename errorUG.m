function errorF=errorUG(G,m1,m2,R,errorG,errorm1,errorm2,errorR)
F=G.*m1.*m2/(R.^2);
partialderivativeG=diff(F,G,1);
partialderivativem1=diff(F,m1,1);
partialderivativem2=diff(F,m2,1);
partialderivativeR=diff(F,R,1);
errorFsquare=(partialderivativeG.*errorG).^2+(partialderivativem1.*errorm1).^2+(partialderivativem2.*errorm2).^2+(partialderivativeR.*errorR).^2
errorF=sqrt(errorFsquare)