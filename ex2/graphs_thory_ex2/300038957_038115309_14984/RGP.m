function [time,matrix] =RGP(n,T)

matrix=zeros(n);
time=0;

if (T==1) 
%%%%%%%%%%%%%%%%%%%%%check T1%%%%%%%%%%%%%%%%%%%%%%%%%%*
    while (isT1exist(matrix,n)==0)
            %while T1 doesn't exist
            if(sum(sum(matrix))~=n^2-n)
                edge=randi(n^2);
                i=mod(edge,n)+1;
                j=ceil(edge/n);
                if (i~=j) && matrix(i,j)~=1
                  %add new vertix
                    matrix(i,j)=1;
                    matrix(j,i)=1;
                    time=time+1;
                end
            end
        end
else
 %%%%%%%%%%%%%%%%%%%%%check T2%%%%%%%%%%%%%%%%%%%%%%%%%%*
            while (length(graphtraverse(sparse(matrix),1,'Directed',true,'Method','BFS'))~=n)  
                %check connectivity
                if(sum(sum(matrix))~=n^2-n)
                    edge=randi(n^2);
                    i=mod(edge,n)+1;
                    j=ceil(edge/n);
                    if (i~=j) && matrix(i,j)~=1
                        %add new vertix
                        matrix(i,j)=1;
                        matrix(j,i)=1;
                        time=time+1;
                    end
                end
            end
end

return