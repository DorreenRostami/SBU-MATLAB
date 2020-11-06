clc;
clear;

n = input("Enter a number: ");
flag = false; % assuming the given number is prime

if(floor(n) == n && n>0) % is natural
	for i = 2:(sqrt(n)) % for (i = 1 ; i < sqrt(n) ; i = i + 1)
        if(rem(n,i) == 0) 
            flag = true; % number isn't prime
            break; %break out of for
        end
    end
	if(~flag) % if flag = false => number was prime
        disp("Prime");
	else      % if flag = true => number wasn't prime
        disp("Not Prime");
	end
else % isn't natural
	disp("Not Natural");
end
    