function [b,l] = milkeyfuc(ra,dec)
raGP=192.85948*pi/180;
decGP=27.12825*pi/180;
lcp=122.932*pi/180;
%sinlcp=sin(lcp)
b=asin(sin(decGP)*sin(dec)+cos(decGP)*cos(dec)*cos(ra-raGP));
%a=cos(dec)*sin(ra-raGP)/cos(b)
%b=asin(cos(dec)*sin(ra-raGP)/cos(b))
l=lcp-pi+asin(cos(dec)*sin(ra-raGP)/cos(b));