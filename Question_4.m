function Question_4
field = gftuple([-1:2^4-2]', 4, 2);
p1 = [0 -Inf 3 -Inf -Inf -Inf 3 7]; %x^15 - 1. Addition and subtraction are the same in the Galois field and so it can just be represented as normal.
p2 = [10 3 6 13 0]; %alpha^10 + alpha^3*x + alpha^6*x^2 + alpha^13*x^3 + x^4

[quotient, remainder] = gfdeconv(p1,p2,field)
end