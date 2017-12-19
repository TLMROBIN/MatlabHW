clear,clc,close all
display('return to a integral value of sin in 0 to pi')
x=0:pi/10:pi;
y=sin(0:pi/10:pi);
result = intergral(x,y,0,pi)
