function F=wuchachuandi(m1,m2,r,G,M1,M2,R,f)
%计算出万有引力公式误差计算公式
f=G*m1*m2/r^2;
F=((diff(f,m1,1)*M1)^2+(diff(f,m2,1)*M2)^2+(diff(f,r,1)*R)^2)^0.5;
end