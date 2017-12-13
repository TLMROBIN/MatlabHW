%homework5
%为什么我importdata进来的是结构体？？而且调出显示的时候比原始数据小10……3倍？？？
clear;clc
a=importdata('lamost.csv');
ra = a.data(:,1);
dec = a.data(:,2);
teff = a.data(:,3);
logg = a.data(:,5);
rverr = a.data(:,10);
feh = a.data(:,7);

for i = 1:length(logg)
    if logg(i)<=4 || 4000>teff(i) || teff(i)>8000
        ra(i) = -99;
        dec(i) = -99;
        teff(i) = -99;
        logg(i) = -99;
        rverr(i) = -99;
        feh(i) = -99;
    end
end


ra(ra==-99) = [];
dec(dec==-99) = [];
teff(teff==-99) = [];
logg(logg==-99) = [];
rverr(rverr==-99) = [];
feh(feh==-99) = [];


figure(1)
scatter(ra,dec,[],teff)
title('scatter 1')
xlabel('ra')
ylabel('dec')


figure(2)
scatter(teff,logg,[],feh)
title('scatter 2')
xlabel('teff')
ylabel('logg')
legend('logg')

rverr(rverr>50) = [];
figure(3)
hist(rverr,100)
title('hist 1')
xlabel('rverr')
ylabel('num')
legend('rverr')
