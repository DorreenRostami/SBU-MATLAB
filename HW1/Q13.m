clear;
clc;

v1 = input("Enter First Vector: ");
v2 = input("Enter Second Vector: ");

l1 = length(v1); %length of the first vector
l2 = length(v2); %length of the second vector

%cosTheta = (u.v)/(|u|.|v|)
if(l1 == l2) 
    dotProduct = dot(v1, v2); %scalar dot product of v1 and v2
    lengthProduct = norm(v1)*norm(v2); %norm(v) = |v| (length of v)

    cosTheta = dotProduct/lengthProduct;
    thetaInDegrees = real(acosd(cosTheta));

    disp(thetaInDegrees);
else
    disp("Vectors Have Different Lengths"); %vectors are in different dimensions
end
