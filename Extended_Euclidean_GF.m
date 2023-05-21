function [g, a, b] = Extended_Euclidean_GF(v, u, field)
remainderIsZero = false;
pol1 = u;
pol2 = v;
remainder = [1];
remainders = {v,u};
a_variable = {[0],[-Inf]};
b_variable = {[-Inf],[0]};
i = 1;

while ~remainderIsZero
    j = 1;
    %Iterate for the multiplicative inverses.
    if i >=3 && j == 1
        %get multiplication of previous remainder multiplied by the
        %quotient. Then take the floor of that. Which would just be the
        %quotient.
        p1 = cell2mat(remainders(1, i - 2));
        p2 = cell2mat(remainders(1, i - 1));
        quotient= floor(gfdeconv(p1, p2, field));
        product = gfconv(p2, quotient, field);
        %%%%%%%%%%%%%%%%%%

        %Add the current remainder(1, i-2) to the product calculated above.
        %Addition can be used as they are in the Galois Field and addition
        %is the same as subtraction. But in the Extended_Euclidean_Int
        %function subtraction had to be used.
        remainder = gfadd(p1, product, field);


        %remainder = remainders(1, i - 2) + (remainders(1, i - 1) * floor(remainders(1, i - 2)/remainders(1, i - 1)));
        remainders{end + 1} = remainder;
        quotient = floor(gfdeconv(v,u,field));
        v = u;
        u = remainder;
        a1 = cell2mat(a_variable(1, i - 2));
        a2 = cell2mat(a_variable(1, i - 1));
        product = gfconv(a2,quotient,field);
        a_variable{end + 1} = gfadd(a1,product,field);

        %%%%%%%%%%%%%%%%%%%%%%%%%%%
        b1 = cell2mat(b_variable(1, i - 2));
        b2 = cell2mat(b_variable(1, i - 1));
        product = gfconv(b2,quotient,field);
        b_variable{end + 1} = gfadd(b1,product,field);
        j = j -1;
    end
    for k = 1:size(remainder,2)
        if remainder(1,k) == -Inf
            remainderIsZero = true;
        else
            remainderIsZero = false;
            break;
        end
    end
    i = i + 1;
end
g = v;
a = cell2mat(a_variable(1, i - 2));
b = cell2mat(b_variable(1, i - 2));
ax = gfconv(pol1,b,field);
by = gfconv(pol2,a,field);

end