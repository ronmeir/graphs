function [ newMatrix,newTime ] = t1_1( time,matrix,n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if (time~=((n*(n-1))/2))
    x=randi(n);
    y=randi(n);
    while matrix(x,y)==1 || x==y
         x=randi(n);
         y=randi(n);
    end
    matrix(x,y)=1;
    matrix(y,x)=1;

newTime=time+1;
newMatrix=matrix;
end
end

