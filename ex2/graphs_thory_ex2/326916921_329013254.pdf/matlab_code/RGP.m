function [G,time] = RGP(n,T)
    E=combnk(1:n,2);            % all combinations of edges
    %for example :E=combnk(1:3,2)
    %                   1     2
    %                   1     3
    %                   2     3
    
    time=0;                     
    G=zeros(n);                 % adjacency matrix   
    max_edges=n*(n-1)/2;        % max number of edges
    while ~checkT(G,T,n)        % check condition
        if time<max_edges       % (time<max_edges)==(E!=(V choose 2)) 
            [sIze,i]=size(E);   % sIze=number of rows 
            row_index=randi(sIze);% choose the index
            row=E(row_index,:); %choose the edge (row)
            E_new=zeros(sIze-1,2);% create new "all combination" 
            for i=1: (sIze-1)   % copy all rows without choosed row
                if i<row_index  
                    E_new(i,1)=E(i,1);
                    E_new(i,2)=E(i,2);
                else
                    E_new(i,1)=E(i+1,1);
                    E_new(i,2)=E(i+1,2);
                end
            end
            E=E_new;            
            G(row(1),row(2))=1; % insert the edge to graph(adjacency matrix)
            G(row(2),row(1))=1;
            time=time+1;        % increment the counter
        end
    end
end
            