clc;clear;

X = [1 1 2 3 5 8 13 21];
Z = diff(X)

h = 0.001;
X = -pi:h:pi;    
f = sin(X);     
Y = diff(f)/h;   
plot(X(:,1:length(Y)),Y,'r',X,f,'b')