function [] = Q8()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[array_1,array_2]=Q7();
n=5:5:100;
N = (5:5:100)';
y(N) = 0.5*N.*log(N);

figure
plot(n,array_1,n,array_2,n,y(N));
end

