clc;clear;

syms x y

z = x*y^3 + x^2;  
d1 = diff(z, x)  % y^3 + 2x
d1 = diff(diff(z,x), x)  % 2
d3 = diff(z, y)  % 3xy^2
d4 = diff(diff(z,y), y)  % 6xy

w = exp(3*x*y) + cos(x/5) - sin(7*y)^2;  
d5 = diff(w, x)  % 3y*exp(3xy) - (1/5)sin(x/5)
d6 = diff(diff(w,x), x)  % 9(y^2)*exp(3xy) - (1/25)cos(x/5)
d7 = diff(w, y)  % 3x*exp(3xy) - 14sin(7y)cos(7y)
d8 = diff(diff(w,y), y) % 98*sin(7*y)^2 - 98*cos(7*y)^2 + 9*x^2*exp(3*x*y)