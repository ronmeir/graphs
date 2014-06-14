function [ B ] = AverageCon( A )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x=0;
for i = 1:20 
    x=0;
    for j= 1:30
        y = MakeConnected(A(i));
        x = x + y;
    end
    B(i) = x/30;
end

end

