%郑晨发 201711160114
clear;clc;
r_d=importdata('lamost.csv');
r_ds=r_d.data;
ds=r_ds(r_ds(:,5)>4.0 & r_ds(:,3)>4000 & r_ds(:,3)<8000,:);

figure(1);

subplot(131);
plot(ds(:,1),ds(:,2),'r.','MarkerSize',3);
xlim([79 90.5]);
ylim([19.5 30.5]);
title('RA-DEC');
xlabel('RA');
ylabel('DEC');
legend('Position');
grid on;

subplot(132);
feh=ds(:,7);
scatter(ds(:,3),ds(:,5),10,feh,'.');
colormap('default');
title('赫罗图');
xlabel('TEFF');
ylabel('LOGG');
legend('Position');
cb=colorbar;
set(get(cb,'Title'),'string','FeH');

subplot(133);
M=linspace(0,60,50);
histogram(ds(:,10),M);
xlim([5,60]);
title('RVERR统计');
xlabel('NUM BINS');
ylabel('NUMBER');
legend('NUMBER');
