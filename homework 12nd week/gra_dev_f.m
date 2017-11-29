function F_dev=gra_dev_f(m1,m2,r,m1_dev,m2_dev,r_dev)
%To input m1, m2 and r and their dev in turn then it outputs F's dev.
%
%Henry, BNU, 20171122
G=6.67e-11;
F_=sym('G*m1*m2/r^2');
F_dev2=(diff(F_,'m1')*sym('m1_dev'))^2+(diff(F_,'m2')*sym('m2_dev'))^2+( ...
    diff(F_,'r')*sym('r_dev'))^2; %To create dev's square value formula.
eval(['gra_dev=sym(',char(F_dev2),');']);
F_dev=double(gra_dev)^.5;
end