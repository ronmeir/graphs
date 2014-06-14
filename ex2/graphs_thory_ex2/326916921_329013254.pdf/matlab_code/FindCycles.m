function output = FindCycles( G,s,n )
% this function based on algorithm BFS learned in class 
% it is very similar in structure 
% not from the internet :)  
queue=s;                    
prev=zeros(1,n);       % for index "i" in array "prev" we have vertex which we came from 
allready_colord=zeros(1,n); % vertex which we allready were
allready_colord(s)=1;       


while size(queue,2)~=0        
    u=queue(1);               % dequeue, first vertex  
    queue=queue(2:end);       % remove first vertex from vector   
    for i=1:n                 
        if G(u,i) && prev(u)~=i % if there edge 
            if allready_colord(i)   
                output=1;           
                return
            else
                queue=[queue i];  % add vertex to array
                prev(i)=u;        % set prev 
                allready_colord(i)=1;   %set color
            end
        end
    end
end
output=0;
                
    
    
    



