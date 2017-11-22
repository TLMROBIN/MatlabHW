function [l,b]=eqtogal(ra,dec)%赤道坐标系转银道坐标系
agp=deg2rad(192.85948);
dgp=deg2rad(27.12825);
lgp=deg2rad(122.932);
ra=deg2rad(ra);
dec=deg2rad(dec);
temp1=sin(dgp)*sin(dec)+cos(agp)*cos(dec)*cos(ra-agp);%sinb
temp2=cos(dec)*sin(ra-agp)/sqrt(1-temp1^2);%sin(lgp-l)
temp3=(cos(dgp)*sin(dec)-sin(dgp)*cos(dec)*cos(ra-lgp))/sqrt(1-temp1^2);%cos(lgp-l)
l=lgp-acos(temp3)
b=asin(temp1)

