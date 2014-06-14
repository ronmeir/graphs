function [time] = MakeConnected(n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

        time=0;
        MaxEdges = n*(n-1)/2;
        G = zeros(n,n);
        
        while (time~=MaxEdges)
           while (1==1)
            x = randi([1, n]);
            y = randi([1, n]);
            if (G(x,y)==0 && x~=y) break; end;
           end
           
        G(x,y)=1; G(y,x)=1;    
        time = time+1;
        
        if (graphconncomp(sparse(G)) == 1) break; end;%if
        
              
            
        end%while



end

