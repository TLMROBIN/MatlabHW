clc;clear;
syms x;
chose=input('�Լ����뺯����1(��varΪ�Ա�����ʹ����ʾ������0��');
if chose==1;
    func=input('�����뺯��(��varΪ�Ա�����','s');
    lowlim=input('�������������');
    uplim=input('�������������');
    jingdu=input('������㾫��(��ֵԽ�󾫶�Խ�ߣ�');
else
    func='x^2+sin(x)';
    lowlim=0  %����������
    uplim=1   %����������
    jingdu=10
end
jifenzhi=calculate(func,lowlim,uplim,jingdu);
jifenzhi
%double(jifenzhi)
