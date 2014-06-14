
function[G,time] = RGP(n,T)  %T1 means deg is at least 1 for all V.
    if T==1
        G=eye(n);
        time=0;
        T1=0;
        while T1==0
            T1=1;
            for i=1:n
                rowSum=sum(G(i,:));
                if (rowSum==1)
                    T1=0;
                end
                if T1==0
                    k = round (rand(1)*(n-1)+1);
                    j = round (rand(1)*(n-1)+1);
                    while G(k,j)==1
                        k = round (rand(1)*(n-1)+1);
                        j = round (rand(1)*(n-1)+1);
                    end
                    G(k,j)=1;
                    G(j,k)=1;
                    time=time+1;
                end
            end
         end
    end

    if T==2
        G=zeros(n);
        time=0;
        T2=0;
        while T2==0
            T2=1;
            S=graphconncomp(sparse(G),'Weak',true);
            if S>1
                T2=0;
            end
            if time~=((n^2/2)-n)
                k = round (rand(1)*(n-1)+1);
                j = round (rand(1)*(n-1)+1);
                while (G(k,j)==1 || k==j || j>k)
                     k = round (rand(1)*(n-1)+1);
                     j = round (rand(1)*(n-1)+1);
                end
                G(k,j)=1;
                %G(j,k)=1;
                time=time+1;
            end
        end

    end
end


        