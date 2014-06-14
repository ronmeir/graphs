function [output] = checkT( G,T,n )
if T==1     %Each node in the graph degree at least 1
    flag=0;
    for i=1:n        % rows
        for j=1:n    %columns
            if i~=j && G(i,j)==1
                flag=1;
            end
        end
        if flag==0   % if degree = 0
            output=false;
            return
        else
            flag=0;
        end
    end
    output=true;
else if T==2            % if graph is connected graph
        [S, C] = graphconncomp(sparse(G)); %this function find number of
                        % connected component(S) and 
                        % to which component belongs a vertex (vector C)
        if S==1         % if only one cennected component
            output=true;
        else
            output=false;
        end
        
        
    else if T==3        % if graph have cycles
            for i=1:n   % check this for each source
                if FindCycles(G,i,n)
                    output=true; % the graph have a cycle
                    return
                end
            end
            output=false; % no cycles
        end
    end
end
            
           
