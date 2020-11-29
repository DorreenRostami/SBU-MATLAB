clc;clear;

% y represents f = x^3 in the range of [1 5]
y = [1 8 27 64 125];
z = trapz(y)

x = [-15:3:15];
y = x.^3;
z = trapz(x,y)
