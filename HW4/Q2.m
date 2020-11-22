clear; clc;
p = input('Enter a row vector containing coefficients: ');
%vector of roots
r = roots(p);
%boolean vector that shows which roots are real or not
isReal = (imag(r) == 0);
%vector holding the elements in isReal that were equal to 1
reals = isReal(isReal == 1);
disp("Number of total roots : " + length(r));
disp("Number of real roots : " + length(reals));
disp("Number of imaginary roots : " + (length(r) - length(reals)));