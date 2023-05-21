function Question_2
field = gftuple([-1:2^4-2]', 4, 2);
p1 = [5]; %alpha^5
p2 = [11]; %alpha^11

%alpha^5 + alpha^11
sum = gfadd(p1,p2,field)

%alpha^5 * alpha^11
product = gfconv(p1,p2,field)

%alpha^5 / alpha^11
[quotient, remainder] = gfdeconv(p1,p2,field)
end