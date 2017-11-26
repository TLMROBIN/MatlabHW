function funcwucha = wuchafangcheng();
syms G M m R;
F=G*M*m/R^2;
syms dM dm dR
funcwucha=((diff(F,m,1)*dm)^2+(diff(F,M,1)*dM)^2+(diff(F,R,1)*dR)^2)^0.5;


