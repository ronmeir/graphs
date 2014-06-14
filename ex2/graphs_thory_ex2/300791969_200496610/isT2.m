function ans = isT2(G,n)
    x = graphconncomp(sparse(G));
    if(x==1)
        ans=true;
    else
        ans=false;
    end
end