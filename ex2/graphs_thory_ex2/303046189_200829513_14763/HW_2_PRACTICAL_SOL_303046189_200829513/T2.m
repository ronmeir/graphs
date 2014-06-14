function res = T2(G,n)
    S = graphconncomp(sparse(G));
    if (S==1)
        res=true;
    else res=false;
    end
end