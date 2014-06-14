function [time] =assign1(n,T)

mat=zeros(n);

time=0;

if (T==1)  %Attribute T1

        while (checkT1(mat,n)==0)

            if(sum(sum(mat))~=n^2-n) % check if the graph is complete

                cell=randi(n^2);

                i=mod(cell,n)+1;

                j=ceil(cell/n);

                if (i~=j) && mat(i,j)~=1 % checks if the edge exist

                    mat(i,j)=1;

                    mat(j,i)=1;

                    time=time+1;

                end

            end

        end

else  %attribute T2

            while (length(graphtraverse(sparse(mat),1,'Directed',true,'Method','BFS'))~=n) % check if the graph is linked

                if(sum(sum(mat))~=n^2-n)  % check if the graph is complete

                    cell=randi(n^2);

                    i=mod(cell,n)+1;

                    j=ceil(cell/n);

                    if (i~=j) && mat(i,j)~=1 % checks if the edge exist

                        mat(i,j)=1;

                        mat(j,i)=1;
 
                        time=time+1;

                    end

                end

            end

end





return