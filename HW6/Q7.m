clc;clear;

syms x
f = ((x^2 - 4)^2)/((x-2)*(x-3));
right2 = limit(f,x,2,'right')
left2  = limit(f,x,2,'left')
right3 = limit(f,x,3,'right')
left3  = limit(f,x,3,'left')
