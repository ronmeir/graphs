function [res] =isT1exist(matrix,n)
%check if T1 exists in Graph G

flag=0;
for i=1:n
    for j=1:n
        if matrix(i,j)==1
            flag=1;
            break;
        end
    end
    
    if flag==0
     res=0;
     return
 end
 flag=0;
end
res=1;
return