clc; clear;
N = [1, 5, 11, 13];
D = [1, 2, 4];
[Q,R] = deconv(N,D)
fprintf('Q(s) = %d*s + %d\n',Q(1),Q(2));
fprintf('R(s) = %d*s + %d\n',R(3),R(4));
disp("H(s) = N(s)/D(s) = Q(s) + R(s)/D(S)");
fprintf('(%d*s^3 + %d*s^2 + %d*s + %d)/(%d*s^2 + %d*s + %d) = (%d*s + %d) + (%d*s + %d)/(%d*s^2 + %d*s + %d)\n',...
    N(1),N(2),N(3),N(4),D(1),D(2),D(3),Q(1),Q(2),R(3),R(4),D(1),D(2),D(3));