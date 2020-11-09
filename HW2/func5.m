function y = func5(a, b, c)

delta = (b^2) - 4*a*c;

if(delta < 0)
    error("No Real Roots");
elseif(delta == 0) % has one root
    y = (-b / (2*a));
else % has 2 roots
    a1 = ((-b - sqrt(delta)) / (2*a)); % first root
    a2 = ((-b + sqrt(delta)) / (2*a)); % second root
    y = [a1, a2];
end
    

