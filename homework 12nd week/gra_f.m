function F=gra_f(m1_p,m2_p,r_p)
%To input m1, m2 and r then it outputs F.
%
%Henry, BNU, 20171122
m1=sym(m1_p);m2=sym(m2_p);r=sym(r_p);G=sym(6.67e-11);
F_=sym('G*m1*m2/r^2');
eval(['gra=sym(',char(F_),');']); %it is better than 'subs'
F=double(gra);
end
%证明一下我会使subs命令
%F=sym('G*m1*m2/r^2');
%subs(F,'G',6.67e-11);
%subs(ans,'m1',5.9e24);
%subs(ans,'m2',2e30);
%double(subs(ans,'r',1.5e11))