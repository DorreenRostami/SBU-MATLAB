%varargin because we have variable number of inputs
function res = func7(a,b,c,d,varargin) 

switch nargin
    case 2
        res = a - b;
    case 3
        res = a + b + c;
    case 4
        res = a * b * c* d;
    otherwise
        error("error because of number of inputs");
end

end

