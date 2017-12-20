data=importdata('lamost.csv');
shujv=data.data;
shujv2=shujv(shujv(:,5)>4 & shujv(:,3)>4000 & shujv(:,3)<8000,:);
logg=shujv2(:,5);
teff=shujv2(:,3);
ra=shujv(1:end,1);
dec=shujv(1:end,2);
feh=shujv2(1:end,7);
rv_err1=shujv(1:end,10);
rv_err=rv_err1(rv_err1<50);
figure
subplot(1,3,1)
plot(ra,dec,'b.','MarkerSize',1)
title('�������ϵ')
xlabel('ra')
ylabel('dec')
legend('λ��')
subplot(1,3,2)
scatter(teff,logg,1,feh)
title('teff��logg��feh')
xlabel('teff')
ylabel('logg')
legend('feh')
subplot(1,3,3)
hist(rv_err,10)
title('rv_err')
xlabel('rv_err')
ylabel('����')
legend('rv_err')