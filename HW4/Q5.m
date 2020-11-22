clc;clear; 
N = [1 5 11 13]; 
D = [1 2 4]; 
%H(s) = N(s)/D(s)
H = deconv(N, D);
%first derivative
Nd1=polyder(N) 
[q1,d1] = polyder(N,D) 
Hd1 = polyder(H)
%second derivative
Nd2 = polyder(Nd1)
[q2,x2] = polyder(q1,d1)
Hd2 = polyder(Hd1)
%integral of N and H
Nintegral = polyint(N) 
Hintegral = polyint(H)