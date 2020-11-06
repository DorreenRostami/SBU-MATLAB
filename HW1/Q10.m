clc;
clear;

n = input("Enter a number: ");
fact = 1;

for i = 1:n     %for (i = 1 ; i < n ; i = i + 1)
    fact = fact*i;
end

disp(fact)