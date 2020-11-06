clc
clear
close

x=0:0.1:10;
y=sin(x);
z=cos(x);
w=cos(x+pi/4);

figure(10)
subplot(2,2,3)
plot(x,y,x,z)

% figure(11)

subplot(2,2,[1,2])

plot(x,y)
hold on
plot(x,z)
plot(x,w)
hold off
grid
xlabel('time')
ylabel('amp')
legend('sin','cos','cos pi/4','Location','northeast')
