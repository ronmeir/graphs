function [T1,Time] = RGP(n,t)

Time=0; %define time
T1=zeros(n,n); %define Adjacency matrix
        while ((t==2 && Time<(n-1)) || IsTTrue(T1,t)==0) %while T Property is false
            if Time~=(((n^2)/2)-(n/2)) %if edges< (n choose 2)
                R1=ceil(n*rand(1));
                R2=ceil(n*rand(1));
                while(T1(R1,R2)~=0 || R1==R2) %while edge exists
                    R1=ceil(n*rand(1));
                    R2=ceil(n*rand(1));
                end
                T1(R1,R2)=1;
                T1(R2,R1)=1;
                Time=Time+1;
            end
        end            
end

function [TTrue] = IsTTrue(Matrix,t) %detecting if the property is true
    if t==1 
        TTrue=1;
        SumVector=sum(Matrix);
        if sum(SumVector==0)~=0
            TTrue=0 ;
        end
    elseif t==2
        [ss, cc] = graphconncomp(sparse(Matrix));
        if(ss>1)
            TTrue=0;
        else
            TTrue=1;
        end
    end
end