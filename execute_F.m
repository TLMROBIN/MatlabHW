clear
%实现交互输入，m_1，m_2为两个天体的质量，单位千克
%R0为两天体间的距离，单位米
%deltam_1,deltam_2，deltaR分别为三者的误差
m_1 = input('please input the weight of one of the two celestial bodis(kg):');
deltam_1 = input('please input the error of the weight of this celestial body(kg):');
m_2 = input('please input the weight of the other celestial body(kg):');
deltam_2 = input('please input the error of the weight of this celestial body(kg):');
R0 = input('please input the distance of the two celestial bodis(m):');
deltaR = input('please input the error of the distance of the two celestial bodis(m):');

%调用子程序求两天体间的相互作用力
F = F_calculate(m_1,m_2,R0)
%调用子程序求算出相互作用力的误差
F_delta = F_delta(m_1,m_2,R0,deltam_1,deltam_2,deltaR)






