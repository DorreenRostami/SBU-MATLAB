clc;
clear;

name = input('Enter your name: ', 's');
format = input("Enter '1' if you want your name to be displayed in Lowercase or '2' for Uppercase: ");

if(format == 1)
	name = lower(name);
elseif(format == 2)
	name = upper(name);
else
	name = 'wrong command';
end

disp(name);