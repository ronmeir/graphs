function ans = isT1(G,n)
    i=0;
    j=0;
    ansTemp=0;

    for i=1:n,
        for j=1:n,
            if(G(i,j)==1)
                ansTemp=ansTemp+1;
                break;
            end
        end
    end

    if(ansTemp == n)
        ans=true;
    else
        ans=false;
    end
end
