clc;clear;

%question's inputs
N = 101; k = 3;
x = linspace(-8,8);

%an = 0 & a0 = 0 & bn = (2*k/(n*pi))(1-cos(n*pi))
%Fourier Serie
an = 0;
a0 = 0;
sn = 0;
bn = zeros(1,N);
n = 1:N;
for n = 1 : N
    bn(n) = ((2*k) / (n*pi)) * (1 - cos(n*pi));
    %an = 0
    sn = sn + bn(n) .* sin(n*x);
end 

figure('Name' , 'Main function and fourier serie');
%limited range [-pi,pi] to show a part of periodic function f(x) with
%T = 2*pi
%if -pi<x<0 ---> -k
%else 0<x<pi ---> k
fx = 2*k*((sin(x)>0) - 0.5); 
subplot(2,1,1);
plot(x, fx); 
title('f(x)');
xlabel('x');
ylabel('f(x)');
axis ([-8, 8, -k-1, k+1]);

subplot(2,1,2);
plot(x, sn ,'r');
title(['SN{f(x)}   N = ', num2str(N)]);
xlabel('x');
ylabel('Sn');
axis ([-8, 8, -k-1, k+1]);

%eN{f(x)} = |f(x) - SN{f(x)}
en = abs(fx - sn);
figure('Name' , 'Approxiamte error function')
plot(x, en);  
title(['eN     N = ' num2str(N)]);
xlabel('x');
ylabel('eN');
axis ([-8, 8, 0, 3]);

%En{f(x)} = integral(f(x)^2,-pi,pi) - 2*pi*a0^2 - pi*sigma(an^2+bn^2,1,N)
integralf2 = integral(@(x) (2*k*((sin(x)>0) - 0.5)) .^2, -pi, pi);
sigma = 0;
for n = 1 : N
    sigma = sigma + bn(n) ^ 2;
end
% a0 =0 and an =0
answer = integralf2 - pi*sigma;
fprintf('approxiamte error value for N = %d is: %f\n',N,answer);

%finding the first and least N for(E=<0.01)
N= 1;
%the previous value of approximate error
E = answer;
while E > 0.001
    sigma = 0;
    for n = 1 : N
        bn(n) = ((2*k) / (n*pi)) * (1 - cos(n*pi));
        sigma = sigma + bn(n)^2;
    end
    E = integralf2 - pi*sigma;
    N = N + 1;
end
N = N-1;
disp("N{min} for (E<=0.01)  =  " +N)
