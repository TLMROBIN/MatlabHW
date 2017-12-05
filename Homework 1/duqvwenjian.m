clear;clc;
neirong=importdata('exp_data.txt','',21);
youxiaoneirong=neirong(3:20);
zongshujv={};
for i=(6:6:18)
    duqv=youxiaoneirong(i-5:i);
    shijian=duqv(1);
    riqi=duqv(2);
    shujv=duqv(3:6);
    fenshujv={shijian riqi shujv};
    zongshujv{i/6}=fenshujv;
end
save('zsj.mat','zongshujv')