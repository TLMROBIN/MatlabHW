clear;clc;close all
read_data=importdata('lamost.csv');
data1=read_data.data;

data2=[];
for n=1:length(data1(:,1))
     if  (data1(n,5))>4&&(4000<data1(n,3))&&(data1(n,3)<8000)
         data2 = [data2;data1(n,:)];
     end
 end
teff=data2(:,3);
logg=data2(:,5);
ra=data2(:,1);
dec=data2(:,2);
rv_err=data2(:,10);
feh=data2(:,7)

subplot(1,3,1)
plot(ra,dec,'.')
xlim([79.5 90])
ylim([19.5 30.5])
xlabel('ra')
ylabel('dec')
title('ra-dec')
legend('ra-dec')

subplot(1,3,2)
scatter(teff,logg,[],feh,'.')
xlabel('teff')
ylabel('logg')
title('teff-logg-feh')
legend('Position')

subplot(1,3,3)
hist(rv_err(rv_err<50),20)
title('rv_err');
xlabel('rv_err');
ylabel('number');
legend('number');