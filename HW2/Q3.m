clc;
clear;

y = input("Enter first number: ");
x = input("Enter second number: ");
str = input("arithmetic(enter 0) or geometric(enter 1) or harmonic(enter 2)? ");

[a,g,h] = mean3(y,x);

if(str == 0)
    disp(a);
elseif (str == 1) 
    disp(g);
elseif(str == 2)
    disp(h);
else
    disp("invalid command")
end