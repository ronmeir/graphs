function [time] = RGP(n,T)

V = 1:n; %V=[1..n]
E=eye(n)*2; %E->adjacency-matrix with diagonal=2 
time=0;%initial time

T1=0;%false
T2=0;%false

if T==1 %T1
    while  T1==0 
        if  time~=nchoosek(length(V),2)%num of edegs not full graph
        
            col=ceil(length(V)*rand(1));%random column number
            row=ceil(length(V)*rand(1));%random raw number
        
            while  E(row,col) == 1 || E(row,col) == 2%search 0
            col=ceil(length(V)*rand(1));%random column number
            row=ceil(length(V)*rand(1));%random raw number
            end
        
            E(row,col)=1;%fill 1 in the matrix
            E(col,row)=1;%fill 1 in the matrix
            time=time+1;
            
            i=1;%initial row num
            j=1;%initial column num
            check=0;%counting 1 in the matrix
             while i < n+1 
                while j < n+1
                    if E(i,j)~=1
                        j=j+1;    
                    else
                       check=check+1;
                      
                      j=1;
                      break;
                    end 
            
                end 
                i=i+1;
                j=1;
             end 
             
            if check==n %1->2 & 2->1 count as check=2
            T1=1; %true
            end 
        end    
    end    
end


if T==2 %T2
    E=eye(n)*0;
   while T2==0 
        if  time~=nchoosek(length(V),2)%num of edegs not full graph
        
            col=ceil(length(V)*rand(1));%random column number
            row=ceil(length(V)*rand(1));%random raw number
        
            while  E(row,col) == 1 || row==col %search 0
            col=ceil(length(V)*rand(1));%random column number
            row=ceil(length(V)*rand(1));%random raw number
            end
        
            E(row,col)=1;%fill 1 in the matrix
            E(col,row)=1;%fill 1 in the matrix
            time=time+1;
            
             if graphconncomp(sparse(E)) == 1%check if there is only 1 connected component
             T2=1; %true - only 1 connected component
             end
    
        end  
   end    
end   

 



