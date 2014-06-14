function [ TIME_VEC ] = RUN_RGP( T )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

TIME_VEC=zeros(1,20);

    if T==1
        for (n=1:20)
            temp=0;  
            for (k=1:30)
               temp=temp+RGP(5*n,1); 
            end
            
            TIME_VEC(n)=temp/30;
        end
        
        
    end
    
     if T==2
        for (n=1:20)
            temp=0;  
            for (k=1:30)
               temp=temp+RGP(5*n,2); 
            end
            
            TIME_VEC(n)=temp/30;
        end
        
        
    end

end

function [ TIME ] = RGP( N,T )
%   Randomly creates a graph with N nodes and T is a property of the graph.
%   Property T will be representd by a function. While proporty T is not
%   achieved, randomly add edge. 
GRAPH=eye(N); 
TIME=0;     

    if T==1
       while (IS_T1(GRAPH)==0)
          GRAPH=newedge(GRAPH,N);
         TIME=TIME+1; 
       end
    end
   
    if T==2
        while (Is_T22(GRAPH)==0)
            GRAPH=newedge(GRAPH,N); 
            TIME=TIME+1; 
        end
    end
    
end

function [ANS] = IS_T1(GRAPH)
% Checks if every node in GRAPH satisfies deg(v)>=1. 
% Returns 1/0 accordingly. 
ANS=1; 
s=size(GRAPH);
s1=s(1);
sums_vector=zeros(1,s1); 
for i = 1:s1
    for j=1:s1
        sums_vector(i)=sums_vector(i)+GRAPH(i,j);
    end
end
for i = 1:s1
    if sums_vector(i)==1
        ANS=0; 
    end
end
end

function [ANS] = IS_T2(GRAPH)

ANS=1; 
i=1; 
tsize=size(GRAPH); 
len=tsize(1); 
v=zeros(1,len);  
flag=1; 
    
    while(flag==1)
        for j=1:len
            if( GRAPH(i,j)==1 && i~=j)
                if v(j)~=2 
                v(j)=1; 
                end
            end
        end
        v(i)= 2;
        j=1; 
        while j<len+1 
            if (v(j)==1)
                i=j; 
                j=len+1; 
            end
            if(j==len)
                flag=0; 
                if sum(v)==2*len
                ANS=1;
                else
                    ANS=0;
                end
            end
            j=j+1; 
        end
        
    end
        
end





function [ GRAPH ] = newedge(GRAPH,N)
r = round (rand(1)*(N-1))+1;
c = round (rand(1)*(N-1))+1;
while GRAPH(r,c)==1
    r = round (rand(1)*(N-1))+1;
    c = round (rand(1)*(N-1))+1;
end
GRAPH(r,c)=1;
GRAPH(c,r)=1;
end


function [ ans ] = Is_T22(G )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
ans=1;
g1=sparse(G);
a=size(G,1);

b=size(graphtraverse(g1,4),2);

if(a~=b)
    ans=0;

end

end

