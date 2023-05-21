function Question_3
field = gftuple([-1:2^4-2]', 4, 2);
p1 = [0 -Inf 3 -Inf -Inf -Inf 3 7]; %P(x)
p2 = [-Inf -Inf 4 -Inf -Inf -Inf 10]; %Q(x)

product = gfconv(p1,p2,field)
end