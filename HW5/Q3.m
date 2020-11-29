clc;clear;

A=@(x) sin(4*x).*cos(4*x);
B=@(x) sin(x).*sin(4*x);
C=@(x) (sin(x)).^2;
D=@(x) sin(x).*cos(4*x);
E=@(x) cos(x).*cos(4*x);
F=@(x) (cos(4*x)).^2;
integralA = integral(A,-2*pi,2*pi);
integralB = integral(B,-2*pi,2*pi);
integralC = integral(C,-2*pi,2*pi);
integralD = integral(D,-pi,pi);
integralE = integral(E,-pi,pi);
integralF = integral(F,-pi,pi);
%integralA = quad(A,-2*pi,2*pi);
%integralB = quad(B,-2*pi,2*pi);
%integralC = quad(C,-2*pi,2*pi);
%integralD = quad(D,-pi,pi);
%integralE = quad(E,-pi,pi);
%integralF = quad(F,-pi,pi);
fprintf('integral of A: %f\n' , integralA)
fprintf('integral of B: %f\n' , integralB)
fprintf('integral of C: %f\n' , integralC)
fprintf('integral of D: %f\n' , integralD)
fprintf('integral of E: %f\n' , integralE)
fprintf('integral of F: %f\n' , integralF)