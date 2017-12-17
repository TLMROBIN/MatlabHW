clear;clc;close all
% use a function to calculate the integral according to the 
% trapezoidal method
% requirement: enter two arrays, x, y, of which y=f (x).
% If the value of each point in the counting of integral 
% is not enough (deltax>bin_width), the value is added to the integral by the 
% interpolation method. 

x = 1:1:10;
y = x.^2;
a = 1;
b = 5;
output = JIFEN(x,y,a,b);
disp(output);
