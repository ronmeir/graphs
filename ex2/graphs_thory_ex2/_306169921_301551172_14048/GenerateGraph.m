function[Time] = RGP(n, T)

Time=0;
G = zeros(n); %Generate empty Adjacency Matrix
E = nchoosek(1:n,2); %Generate list of Edges to pick from

if T==1   
    while (sum(any(G+G'))<(n-1) && size(E,1) ~=0)
        e=randi(size(E,1)); %Pick random Edge (given by a coordinate)
        G(E(e,1),E(e,2))=1; %Create the Edge in the graph
        E(e,:)=[ ]; %Delete the Edge from the Edge list
        Time=Time+1;
    end
end
     
        
if T==2
    while (graphconncomp(sparse(transpose(G)),'Directed',false) ~= 1 && size(E,1) ~=0)
        e=randi(size(E,1)); %Pick random Edge (given by a coordinate)
        G(E(e,1),E(e,2))=1; %Create the Edge in the graph
        E(e,:)=[ ]; %Delete the Edge from the Edge list
        Time=Time+1;
    end
end      
        
