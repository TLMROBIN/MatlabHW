clear
spec2=importdata('spec.csv',',',1);
photo2=importdata('photo.csv',',',1);
spec=spec2.data;
photo=photo2.data;
SR=[];T_SR3=[];
for The_one=1:length(photo)
    cursor=find((abs(spec(:,1)-photo(The_one,1))<.01/3600)& ...
        (abs(spec(:,2)-photo(The_one,2))<.01/3600));
    T_SR2=spec(cursor,3);
    [T_SR2a ~]=size(T_SR2);
    T_SR1=photo(The_one,:);
    if T_SR2a~=1
        for The_one2=1:T_SR2a-1
            T_SR3=[T_SR3;T_SR1];
        end
        T_SR1=[T_SR1;T_SR3];
        T_SR3=[];
    end
    T_SR=[T_SR1 T_SR2];
    SR=[SR;T_SR];
end
SR(:,6)=SR(:,3)-SR(:,4);

%Watch The scatter then choose the difi '3'
data_cut=SR(SR(:,6)>3,:);SR=SR(SR(:,6)<3,:);
scatter(SR(:,5),SR(:,6),'mh')
Smin=min(SR(:,5));
N=floor((max(SR(:,5))-Smin)/50);
SRcT=[];
for The_one3=1:N
    SRc=SR((SR(:,5)<Smin+The_one3*50) & (SR(:,5)>=Smin+The_one3*50-50),6);
    SRc=prctile(SRc(SRc<prctile(SRc,5)),50);
    SRcT=[SRcT;Smin+The_one3*50-25 SRc];
end
hold on
plot(SRcT(:,1),SRcT(:,2),'k--o','MarkerSize',10)
clear spec2 photo2 N  SRc  Smin  T_SR1 T_SR2a The_one The_one3 ...
    T_SR T_SR2 T_SR3 The_one2 cursor