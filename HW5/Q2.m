clc;clear;

format long
%A
x = -2*pi : pi/100 : 2*pi;
A = sin(4*x).*cos(4*x);
z = trapz(x,A);
fprintf('A : %f\n' ,z);
figure('Name','A & B & C','NumberTitle','off');
subplot(3,2,1);
hold on;
y1 = sin(4*x);
y2 = cos(4*x);
plot(x,y1,x,y2);
legend('sin(4*x)','cos(4*x)');
axis ([-2*pi,2*pi, -1, 1]);
subplot(3,2,2);
plot(x, A);
title('A = sin(4*x) * cos(4*x)');
legend('sin(4*x)*cos(4*x)');
axis ([-2*pi,2*pi, -1, 1]);
hold off;

%B
x = -2*pi : pi/100 : 2*pi;
B = sin(x).*sin(4*x);
z = trapz(x,B);
fprintf('B : %f\n' ,z);
subplot(3,2,3);
hold on;
y1 = sin(x);
y2 = sin(4*x);
plot(x,y1,x,y2);
legend('sin(x)','sin(4*x)');
axis ([-2*pi,2*pi, -1, 1]);
subplot(3,2,4);
plot(x, B);
title('B = sin(x) * sin(4*x)');
legend('sin(x)*sin(4*x)');
axis ([-2*pi,2*pi, -1, 1]);
hold off;

%C
x = -2*pi : pi/100 : 2*pi;
C = sin(x).*sin(x);
z = trapz(x,C);
fprintf('C : %f\n' ,z);
subplot(3,2,5);
hold on;
y1 = sin(x);
y2 = sin(x);
plot(x,y1,x,y2);
legend('sin(x)','sin(x)');
axis ([-2*pi,2*pi, -1, 1]);
subplot(3,2,6);
plot(x, C);
title('C = sin(x) * sin(x)');
legend('sin(x)*sin(x)');
axis ([-2*pi,2*pi, -1, 1]);
hold off;

%D
x = -pi : pi/100 : pi;
D = sin(x).*cos(4*x);
z = trapz(x,D);
fprintf('D : %f\n' ,z);
figure('Name','D & E & F','NumberTitle','off');
subplot(3,2,1);
hold on;
y1 = sin(x);
y2 = cos(4*x);
plot(x,y1,x,y2);
legend('sin(x)','cos(4*x)');
axis ([-pi,pi, -1, 1]);
subplot(3,2,2);
plot(x, D);
title('D = sin(x) * cos(4*x)');
legend('sin(x)*cos(4*x)');
axis ([-pi,pi, -1, 1]);
hold off;

%E
x = -pi : pi/100 : pi;
E = cos(x).*cos(4*x);
z = trapz(x,E);
fprintf('E : %f\n' ,z);
subplot(3,2,3);
hold on;
y1 = cos(x);
y2 = cos(4*x);
plot(x,y1,x,y2);
legend('cos(x)','cos(4*x)');
axis ([-pi,pi, -1, 1]);
subplot(3,2,4);
plot(x, E);
title('E = cos(x) * cos(4*x)');
legend('cos(x)*cos(4*x)');
axis ([-pi,pi, -1, 1]);
hold off;

%F
x = -pi : pi/100 : pi;
F = cos(4*x).*cos(4*x);
z = trapz(x,F);
fprintf('F : %f\n' ,z);
subplot(3,2,5);
hold on;
y1 = cos(4*x);
y2 = cos(4*x);
plot(x,y1,x,y2);
legend('cos(4*x)','cos(4*x)');
axis ([-pi,pi, -1, 1]);
subplot(3,2,6);
plot(x, F);
title('F = cos(4*x) * cos(4*x)');
legend('cos(4*x)*cos(4*x)');
axis ([-pi,pi, -1, 1]);
hold off;

