function F_dev=gra_dev_f(m1_p,m2_p,r_p,m1_dev_p,m2_dev_p,r_dev_p)
%To input m1, m2 and r and their dev in turn then it outputs F's dev.
%
%Henry, BNU, 20171122
m1=sym(m1_p);m2=sym(m2_p);r=sym(r_p);m1_dev=sym(m1_dev_p);m2_dev= ...
    sym(m2_dev_p);r_dev=sym(r_dev_p);G=sym(6.67e-11);
F_=sym('G*m1*m2/r^2');
F_dev2=(diff(F_,'m1')*sym('m1_dev'))^2+(diff(F_,'m2')*sym('m2_dev'))^2+( ...
    diff(F_,'r')*sym('r_dev'))^2; %To create dev's square value formula.
eval(['gra_dev=sym(',char(F_dev2),');']);
F_dev=double(gra_dev)^.5;
end