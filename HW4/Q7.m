clear; clc;

b = [1 2]; % s + 2
a = [1 4 3 0]; % s^3 + 4s^2 + 3s
[r,p,k] = residue(b,a)