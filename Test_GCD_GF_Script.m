function Test_GCD_GF_Script()
%This script will be used to run tests on the implemented Extended
%Euclidean Algorithm for the Galois Field GF(2^4) using the primitive
%polynomial of x^3 + x + 1. 8 Test will be run like in the Test_GCD_Script
%to ensure confidence in the algorithm.

field = gftuple([-1:2^4-2]', 4, 2);
%Test 1
p1 = [0 0];
p2 = [0 0 0];
[g1,a1,b1] = Extended_Euclidean_GF(p1,p2,field)
ax = gfconv(p1,a1,field);
by = gfconv(p2,b1,field); 
sum1 = gfadd(ax,by,field)

%Test 2
p1 = [4 0];
p2 = [0 4 8];
[g2,a2,b2] = Extended_Euclidean_GF(p1,p2,field)
ax = gfconv(p1,a2,field);
by = gfconv(p2,b2,field); 
sum2 = gfadd(ax,by,field)

%Test 3
p1 = [6 14 -Inf 10 13 13 13];
p2 = [10 9 8];
[g3,a3,b3] = Extended_Euclidean_GF(p1,p2,field)
ax = gfconv(p1,a3,field);
by = gfconv(p2,b3,field); 
sum3 = gfadd(ax,by,field)

%Test 4

p1 = [2 0 9 0 6 0 12 0 14];
p2 = [12 0 0 -Inf -Inf -Inf 13];
[g4,a4,b4] = Extended_Euclidean_GF(p1,p2,field)
ax = gfconv(p1,a4,field);
by = gfconv(p2,b4,field); 
sum4 = gfadd(ax,by,field)


%Test 5
p1 = [0 5 5 -Inf -Inf -Inf -Inf -Inf -Inf -Inf 13];
p2 = [-Inf -Inf -Inf -Inf -Inf 5 3 7 10 14];
[g5,a5,b5] = Extended_Euclidean_GF(p1,p2,field)
ax = gfconv(p1,a5,field);
by = gfconv(p2,b5,field); 
sum5 = gfadd(ax,by,field)

%Test 6
p1 = [1 0];
p2 = [0 0 0];
[g6,a6,b6] = Extended_Euclidean_GF(p1,p2,field)
ax = gfconv(p1,a6,field);
by = gfconv(p2,b6,field); 
sum6 = gfadd(ax,by,field)

%Test 7
p1 = [1 0];
p2 = [0 0 0 8 9 10 12 14 8 0];
[g7,a7,b7] = Extended_Euclidean_GF(p1,p2,field)
ax = gfconv(p1,a7,field);
by = gfconv(p2,b7,field); 
sum7 = gfadd(ax,by,field)

%Test 8
p1 = [2 2 2];
p2 = [2 2 2];
[g8,a8,b8] = Extended_Euclidean_GF(p1,p2,field)
ax = gfconv(p1,a8,field);
by = gfconv(p2,b8,field); 
sum8 = gfadd(ax,by,field)

end