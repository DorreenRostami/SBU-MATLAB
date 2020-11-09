function indexes = func4(x)
n = length(x);
indexes = [];

for i = 1:n    
    if(isprime(x(i)))
        indexes = [indexes,i]; % concat i to answer vector
    end
end
end

function flag = isprime(n)
flag = true; % assuming the given number is prime

if(floor(n) == n && n > 0) % is natural
    for i = 2:(sqrt(n)) 
        if(rem(n,i) == 0) 
            flag = false; % number isn't prime
            break; % break out of for
        end
    end
else % isn't natural
    flag = false;
end
end
