logg1=csvread('lamost.csv',1,4,[1,4,43455,4]);
%按条件挑选出logg:
logg=logg1(logg1>4.0)
teff1=csvread('lamost.csv',1,2,[1,2,43455,2]);
%按条件挑选出teff:
teff=teff1(teff1>4000&teff1<8000)
ra=csvread('lamost.csv',1,0,[1,0,43455,0]);
dec=csvread('lamost.csv',1,1,[1,1,43455,1]);
rv_err1=csvread('lamost.csv',1,9,[1,9,43455,9]);
%挑出0~50的rv_err:
rv_err=rv_err1(rv_err1>0&rv_err1<50);
subplot(1,3,1),plot(ra,dec,'r.','Markersize',1);title('ra,dec的plot散点图');xlabel('ra');ylabel('dec');legend('dec=f(ra)');
subplot(1,3,2),scatter(teff1,logg1,[2],'feh');title('teff,log的散点图');xlabel('teff');ylabel('logg');legend('logg=f(teff)');
subplot(1,3,3),hist(rv_err);title('rv_err在0到50之间的柱状分布图');xlabel('rv_err');legend('rv_err');

