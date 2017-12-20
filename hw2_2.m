a=input('请输入赤道坐标ra=');
d=input('请输入赤道坐标dec=');
agp=192.85948;
dgp=27.12825;
lcp=122.932;
b=asin(sin(dgp)*sin(d)+cos(dgp)*cos(d)*cos(a-agp))
l=lcp-asin(cos(d)*sin(a-agp)/cos(b))