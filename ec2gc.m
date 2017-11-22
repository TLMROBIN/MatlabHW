function V=ec2gc(ra,dec)
ra = ra*pi/180;
dec = dec*pi/180;
ra_GP = 192.85948*pi/180;
dec_GP = 27.12825*pi/180;
l_CP = 122.932*pi/180;

b = asin(sin(dec_GP)*sin(dec) + cos(dec_GP)*cos(dec)*cos(ra-ra_GP));
l_si1 = l_CP-(asin(cos(dec)*sin(ra-ra_GP)/cos(b)));
l_si2 =l_CP-(pi- asin(cos(dec)*sin(ra-ra_GP)/cos(b)));
l_co1 = l_CP-(acos(cos(dec_GP)*sin(dec) - sin(dec_GP)*cos(dec)*cos(ra-ra_GP)/cos(b)));
l_co2 = l_CP+(acos(cos(dec_GP)*sin(dec) - sin(dec_GP)*cos(dec)*cos(ra-ra_GP)/cos(b)));

if abs(l_si1-l_co1)<0.1|abs(l_si1-l_co2)<0.1
    l = l_si1;
else
    l = l_si2;
end
V = [l,b]