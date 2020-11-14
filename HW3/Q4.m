clc;
clear;
close all

% part 1
f = @(x) 0.5*exp(x.^2 - 2.*x + 2);

% part 2
g = @(x) log2(x.^3 + 1);
z = @(x) log(x.^3 + 3)/log(4); %log4(X) = log10(X) / log10(4)

% part 3
n = @(t) tan((pi/4).*t);
m = @(t) sin((pi/2).*t);

%part 4
k = @(y) y.*exp(-y).*cos((8*pi).*y);

figure('Name','Question 4','NumberTitle','off')
% subplot 1
subplot(2,2,1);
x = linspace(-3,5,100);
semilogy(x,f(x),'magenta')

xlabel('x','color','magenta','fontsize',12);
ylabel('log(y)','color','magenta','fontsize',12);
title('number 1');
text(1,50,'\it0.5e^{x^2-2x+2}','color','magenta','fontSize',10); %italic text
axis tight %sets the axis box tightly around the data
grid on

% subplot 2
subplot(2,2,2)
x = linspace(1,64,100);
plot(x,g(x),'--b') %-- blue
hold on
plot(x,z(x),'--r') %-- red
hold off
xlabel('x','fontsize',12);
ylabel('y','fontsize',12);
title('number 2');
legend('g(x)=log2(x^3+1)','g(x)=log4(x^3+3)');
axis tight
grid on

% subplot 3
subplot(2,2,3);
t = linspace(0,2,50);
yyaxis left
plot(t,m(t),'-*b'); %-* blue
hold on;
yyaxis right
plot(t,n(t),'-sr'); %-square red
hold off
xlabel('x','fontsize',12);
ylabel('y','fontsize',12);
title('number 3');
legend('\it m(t)=sin((\pi/2)t)','\it n(t)=tan((\pi/4)t)');
axis tight
grid on

% subplot 4
subplot(2,2,4);
y = linspace(0,10,500);
semilogy(y,k(y),'color',[0,0.5,.6]);

xlabel('log(x)','color',[0,0.5,.6],'fontsize',12);
ylabel('log(y)','color',[0,0.5,.6],'fontsize',12);
title('number 4');
text(5,0.1,'\it k(y)=y.e^{-y}.cos(8\piy)','color',[0,0.5,.6],'fontSize',10);
axis fill
grid on
