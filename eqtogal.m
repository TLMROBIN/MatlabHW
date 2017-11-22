function [l,b]=eqtogal(ra,dec)
    lcp=122.932*pi/180;
    ragp=192.85948*pi/180;
    decgp=27.12825*pi/180;
    ra=ra*pi/180;
    dec=dec*pi/180;
    b=asin(sin(decgp)*sin(dec)+cos(decgp)*cos(dec)*cos(ra-ragp));
    l=lcp-atan2(cos(dec)*sin(ra-ragp),cos(decgp)*sin(dec)-sin(decgp)*cos(dec)*cos(ra-ragp));
end
    
    
    
