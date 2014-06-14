function[G,time] = RGP(n,T)
% init:
G = zeros(n);
time = 0;

% while T not accuring
while ~T(G,n) 
    flag=0;
    if (time~=(nchoosek(n,2)))
        x = round(rand(1)*(n-1))+1;
        y = round(rand(1)*(n-1))+1;
        if(G(x,y) == 1)
            flag=1;
        end
         
        if(x == y )
            flag=1;
        end
        
        if(~flag)%true if edge exist
            G(x,y)=1;%create edge between x&y
            G(y,x)=1;%create edge between y&x
            time = time+1;
        end%if
    end%if    
    
end%while
    
end%function