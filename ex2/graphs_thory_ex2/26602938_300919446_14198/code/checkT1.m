function [answ] =checkT1(mat,n)

% This function check the attribute T1 if all the vertix have degree 1 and
% return 1 else return 0

found=0;

for i=1:n

    for j=1:n

        if mat(i,j)==1

            found=1;

            break;

        end

    end

 if found==0 

     answ=0;

     return

 end

 found=0;

end

answ=1;

return