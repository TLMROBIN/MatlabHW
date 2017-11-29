function F=gra_f(m1,m2,r)
%To input m1, m2 and r then it outputs F.
%
%Henry, BNU, 20171122
G=6.67e-11;
F_='G*m1*m2/r^2';
eval(['gra=sym(',F_,');']); 
F=double(gra);
end