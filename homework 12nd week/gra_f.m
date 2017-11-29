function F=gra_f(m1,m2,r)
%To input m1, m2 and r then it outputs F.
%
%Henry, BNU, 20171122
%m1=sym(m1_p);m2=sym(m2_p);r=sym(r_p);
G=6.67e-11;
F_=sym('G*m1*m2/r^2');
eval(['gra=sym(',char(F_),');']); %it is better than 'subs'
F=double(gra);
end
