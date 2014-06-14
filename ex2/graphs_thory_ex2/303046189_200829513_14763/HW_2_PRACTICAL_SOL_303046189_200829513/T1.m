function res = T1(G,n)
    % init
    i=0;j=0;res2=0;
    for i=1:n,
        for j=1:n,
            if(G(i,j) == 1)
                res2=res2+1;
                break;
            end
        end
    end

    if(res2 == n)
        res=true;
    else
        res=false;
    end
end