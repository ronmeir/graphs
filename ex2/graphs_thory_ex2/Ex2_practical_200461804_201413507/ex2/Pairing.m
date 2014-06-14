function [anst1]=Pairing(n,matrix)
count=0;
flag=0;
for i=1:n
    for j=1:n
        if matrix(i,j)==1
            count=count+1;
            flag=1;
        end
        if flag==1
        break
        end
    end 
    flag=0;
end
if count==n
    anst1=1;
else
    anst1=0;

end
end
 