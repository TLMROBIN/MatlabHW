%[l,b] = eqtogal(ra,dec)
ra=input('������������ra��');
dec=input('������������dec��');
ag=192.85948;
dg=27.12825;
lp=122.932;
b=ra*sin(sin(dg)*sin(dec)+cos(dg)*cos(dec)*cos(ra-ag));
l=lp-ra*sin(cos(dec)*sin(ra-ag)/cos(x));