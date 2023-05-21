function Test_GCD_Script()
%This script will test my implementented script answers for the Extended Euclidean
%Algorithm against Matlabs built in function. 5 different tests will be
%done to ensure that my algorithm works. This is for the one where integer
%values are the inputs. The variables "g,a,b" will be my output values and
%the variables "mg,ma,mb" will be matlabs out put variables. It is assumed
%that v will be the larger value.

%Test 1
[g1,a1,b1] = Extended_Euclidean_Int(22000, 97)
[mg1,ma1,mb1] = gcd(22000, 97)

%Test 2
[g2,a2,b3] = Extended_Euclidean_Int(560, 197)
[mg2,ma2,mb2] = gcd(560, 197)

%Test 3
[g3,a3,b3] = Extended_Euclidean_Int(27, 3)
[mg3,ma3,mb3] = gcd(27, 3)

%Test 4
[g4,a4,b4] = Extended_Euclidean_Int(198745, 77)
[mg4,ma4,mb4] = gcd(198745, 77)

%Test 5
[g5,a5,b5] = Extended_Euclidean_Int(55, 13)
[mg5,ma5,mb5] = gcd(55, 13)
end