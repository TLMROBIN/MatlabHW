clear;clc;
hlall=importdata('lamost.csv',',','1');
hl=hlall.data;
teff=hl(:,3);
logg=hl(:,5);
data=[];
for i=1:length(hl')
    if logg(i,1)>4.0 & teff(i,1)<8000 & teff(i,1)>4000
        data=[data;hl(i,:)];
    end
end
ra=data(:,1);
dec=data(:,2);
teff=data(:,3);
logg=data(:,5);
feh=data(:,7);
rv_err=data(data(:,10)<50,10);

figure(1);
subplot(1,3,1);
scatter(ra,dec,2,'k.')
title('Î»ÖÃÍ¼')
xlabel('ra')
ylabel('dec')
legend('position')
subplot(1,3,2);
scatter(teff,logg,2,feh,'.')
title('ºÕÂŞÍ¼')
xlabel('teff')
ylabel('logg')
legend('stars')
colorbar;
subplot(1,3,3);
hist(rv_err,0:1:50)
title('ËÙ¶ÈÎó²î_0-50')
xlabel('tv_err')
ylabel('amount')
legend('error')
