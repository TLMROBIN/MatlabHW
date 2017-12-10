clc;close all;clear;
data=importdata('lamost.csv',',',1);
lamo_data=data.data;
lamo=[];
for i=1:43455 %Select qualified source
    if lamo_data(i,5)>4.0 && lamo_data(i,3)>4000 && lamo_data(i,3)<8000
        lamo=[lamo;lamo_data(i,:)];
    end
end
ra=lamo(:,1);
dec=lamo(:,2);
teff=lamo(:,3);
logg=lamo(:,5);
feh=lamo(:,7);
rverr=lamo(:,10);

subplot(3,1,1)
scatter(ra,dec,2,'d')
axis([min(ra),max(ra),min(dec),max(dec)]);
xlabel('ra')
ylabel('dec')
title('ra-dec')
legend('star')

subplot(3,1,2)
scatter(teff,logg,2,feh)
xlabel('teff')
ylabel('logg')
title('teff-logg')
legend('star')

new_rverr=[];
for i=1:22133
    if rverr(i,1)<=50
        new_rverr=[new_rverr;rverr(i,1)];
    end
end
subplot(3,1,3)  
hist(new_rverr,50)
xlabel('bins')
ylabel('count')
title('hist(rverr)')
legend('rverr')