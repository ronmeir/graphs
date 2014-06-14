function [ time , G ] = RGP( n , T )
%RGP Summary of this function goes here
%   Detailed explanation goes here
n = n;
time = 0;
G = zeros(n);
Esize=0;
Cond = T;
StopFlag = 0;
i = 1;
% Pick random edge 'e'
while StopFlag == 0
    if Esize < (n*n-n)
    x = round(rand(1,1)*(n-1)+1);
    y = round(rand(1,1)*(n-1)+1);
        while (G(x,y) > 0) || (x==y)
            x = round(rand(1,1)*(n-1)+1);
            y = round(rand(1,1)*(n-1)+1);
        end

G(x,y)=1;
time = time + 1;
Esize = Esize + 1;
    else
        StopFlag=1;
    end
    
            if Cond == 1
             if prod(sum(G,2),1) > 0
            
                 StopFlag=1;
             end
            elseif Cond == 2
                 if  graphconncomp(sparse(G)) == 1
              
                 StopFlag=1;
                 end

            elseif Cond == 3
                
                    if graphisdag(sparse(G))==0
                      StopFlag=1;  
                    end    
           

                    
            else 
                StopFlag=1;

            end
            
end

end

