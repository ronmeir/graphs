function [ G,time ] = RGP(n,T)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
G=eye(n);
time=0;
if T==1
    while checkT1(G,n)==0
        G=addArc(G,n);
        time=time+1;
    end
elseif T==2
    Access = zeros(1,n);
    Access (1) = 1;
    while checkT2(Access,G,n)==0
        G=addArc(G,n);
        time=time+1;
    end
end
end

function [ isT1 ] = checkT1(G,n)
isT1=1;
for j=1:n
    x=sum(G(j,:));
    if (x==1)
        isT1=0;
    end
end
end

function [ isT2 ] = checkT2(Access,G,n)
isT2 = 0;
flag = 1;
while (flag == 1)
    flag = 0;
    i = 0;
    while (i < n)
        i = i + 1; 
        if (Access (i) == 1)
            flag = 1;
            index=i;
            i=n;
        end
    end
    if (flag==1)
        for (j=1:n)
            if (G(index,j)==1 && Access (j) == 0)
                Access (j) = 1;
            end
        end
         Access (index) = 2;
    end
end
if ((round (Access / 2)) == ones (1,n))
    isT2 = 1;
end
end

function [ G ] = addArc(G,n)
row = round (rand(1)*(n-1))+1;
col = round (rand(1)*(n-1))+1;
while G(row,col)==1
    row = round (rand(1)*(n-1))+1;
    col = round (rand(1)*(n-1))+1;
end
G(row,col)=1;
G(col,row)=1;
end

