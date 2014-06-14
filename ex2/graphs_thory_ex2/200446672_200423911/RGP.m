function [time,G] = RGP( n,T )
G=zeros(n);
time=0;

    if T==1
       
        while sum(sum(G,2)==0)>=1 %check for d(each v)=>1
            if sum(G)~=ones(1,n)*(n-1)%check if graph is complte
              x=randi([1, n]);
              y=randi([1, n]);
              while G(x,y)~=0 || x==y
                x=randi([1, n]);%random vertex
                y=randi([1, n]);%random vertex    
              end
             G(x,y)=1;
             G(y,x)=1;
             time=time+1;
            end
        end   
    elseif T==2
       while length(graphtraverse(sparse(G),1,'Directed',true,'Method','BFS'))~=n %check for d(each v)=>1
            if sum(G)~=ones(1,n)*(n-1)%check if graph is complte
              x=randi([1, n]);
              y=randi([1, n]);
              while G(x,y)~=0 || x==y
                x=randi([1, n]);%random vertex
                y=randi([1, n]);%random vertex    
              end
             G(x,y)=1;
             G(y,x)=1;
             time=time+1;
            end
        end            
                
                
                
         
        
        
        
                
    end
    

end

