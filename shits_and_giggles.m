function shits_and_giggles
field = gftuple([-1:2^4-2]', 4, 2)
p = gfprimdf(4)
p1 = [0 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf 0]
p2 = [10 3 6 13 0]
[quotient, remainder] = gfdeconv(p1, p2, field)
end