clc;
clear;
close all

% ----------------- z
[x1,y1] = meshgrid(-2.5:.1:2.5, -6:.2:6);
z = y1.^2.*exp(-x1.^2 + y1.^2);

figure(1)
subplot(2,2,1)
plot3(x1,y1,z)
grid on
xlabel('x');
ylabel('y');
zlabel('z');
title('plot3','fontSize',12);

subplot(2,2,2);
mesh(x1,y1,z);
xlabel('x');
ylabel('y');
zlabel('z');
title('mesh','fontSize',12);

subplot(2,2,3);
surf(x1,y1,z);
xlabel('x');
ylabel('y');
zlabel('Z');
title('surf','fontSize',12);

subplot(2,2,4);
contour(x1,y1,z);
xlabel('x');
ylabel('y');
title('contour','fontSize',12);


% ----------------- w
figure(2)
[x2,y2] = meshgrid(-7:.2:7 , -5:.1:5);
w = cos(x2).*cos(y2);

subplot(2,2,1);
plot3(x2,y2,w);
grid on
xlabel('x');
ylabel('y');
zlabel('w');
title('plot3','fontSize',12);

subplot(2,2,2);
mesh(x2,y2,w);
xlabel('x');
ylabel('y');
zlabel('w');
title('mesh','fontSize',12);

subplot(2,2,3);
surf(x2,y2,w);
xlabel('x');
ylabel('y');
zlabel('w');
title('surf','fontSize',12);

subplot(2,2,4);
contour(x2,y2,w);
xlabel('x');
ylabel('y');
title('contour','fontSize',12);
