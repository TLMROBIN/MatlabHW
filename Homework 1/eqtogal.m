%赤道坐标转换为银道坐标
%郑晨发 201711160114
%格式：eqtogal(ra,dec)
%返回值：[l,b]
%ra : 赤经    dec : 赤纬
%l : 银经    b : 银纬

function M=eqtogal(ra,dec)
a_gp=192.85948;
d_gp=27.12825;
l_cp=122.932;

b=asind(sind(d_gp)*sind(dec)+cosd(d_gp)*cosd(dec)*cosd(ra-a_gp));
%l=l_cp-asind(cosd(dec)*sind(ra-a_gp)/cosd(b));
%若如上应用第一个公式计算l，结果为65.8638，与实际不符
l=l_cp-acosd((cosd(d_gp)*sind(dec)-sind(d_gp)*cosd(dec)*cosd(ra-a_gp))/cosd(b));
M=[l,b]; %不知道为什么函数输出不能使用“[l,b]”，只好用这种方法代替
end
