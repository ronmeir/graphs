function[G,t] = RGP(n,T)
    t=0;
    G = zeros(n);
    
    while ~T(G,n)
        existEdge=0;
        if(t ~= nchoosek(n,2))
            i = round(rand(1)*(n-1))+1;
            j = round(rand(1)*(n-1))+1;
            
            if(G(i,j) == 1)
                existEdge=1;
            else
                if(i == j)
                    existEdge=1;
                end
            end
            
            if(existEdge == 0)
                G(i,j) = 1;
                G(j,i) = 1;
                t = t + 1;
            end
        end
    end
end