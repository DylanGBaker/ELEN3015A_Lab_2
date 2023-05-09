function [g,a,b] = Extended_Euclidean_Int(v,u)
remainderIsZero = false;
remainder = 1;
remainders = [v,u];
a_variable = [1,0];
b_variable = [0,1];
i = 1;
while ~remainderIsZero
    j = 1;     
    %Iterate for the multiplicative inverses.
    if i >=3 && j == 1
        remainder = remainders(1, i - 2) - (remainders(1, i - 1) * floor (remainders(1, i - 2)/remainders(1, i - 1)));
        remainders(1,i) = remainder;
        quotient = floor(v/u);
        v = u;
        u = remainder;
        a_variable(1,i) = a_variable(1, i - 2) - (a_variable(1, i - 1) * quotient);
        b_variable(1,i) = b_variable(1, i - 2) - (b_variable(1, i - 1) * quotient);
        j = j -1;
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if remainder == 0
        remainderIsZero = true;
    end
    i = i + 1;
end
g = v;
a = a_variable(1, i - 2);
b = b_variable(1, i - 2);
end