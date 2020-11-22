clear; clc;

p = conv([-1, 0, 1], [-1, 0, 1]); % p = (-x^3 + 1)^2
q = [2, 0, -3, 1]; % q = 2x^3 -3x + 1
pq = conv(p, q);  % pq = ((1 - x^3)^2)*(1 - 3x - 2x^3)

% indefinit integral (represented by the coefficents in pq)
indef_int = polyint(pq)

% definit integral over the limits of integration
a = -2;
b = 3;
def_int = diff(polyval(indef_int,[-2 3]))
