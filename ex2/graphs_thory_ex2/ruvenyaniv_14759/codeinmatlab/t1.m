function [answer] =t1(z, matrix)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

enter=0;

for i=1:z
    
        for j=1:z
        
            if matrix(i,j)==1
            enter=1;
            break
            end % if
        end %for
        if enter==0
            answer=1;
            return  %we can add link
        end
        enter=0;
end
answer=0;
return  % we can add a new link

end

