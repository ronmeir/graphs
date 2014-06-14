function [ res ] = T1( G,n )
res = 1;
temp = 0;
for i=1:n
    for j=1:n
        temp = temp + G(i,j);
    end%for
    if (temp==0)
        res = 0;
        %return;
    end%if
    temp = 0;
end%for
end%T1