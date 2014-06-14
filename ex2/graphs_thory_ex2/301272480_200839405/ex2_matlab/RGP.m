function [ T_VECTOR ] = RGP( T )

% returned avarage value of k=30 attampts of craeting randomaly graph
%by Attribute of T1/T2
%   call MAKE_RGP() for each value of n=5..10..100 for 30 times and push
%   into T_VECTOR the avarage of 30 times 

T_VECTOR=zeros(1,20);

if T==1     
    for n=1:20
        counter=0;
        for k=1:30
            counter=counter+MAKE_RGP(5*n, 1);
        end
        
        T_VECTOR(n)=counter/30;
    end
end

if T==2
    for n=1:20
        counter=0;
        for k=1:30
            counter=counter+MAKE_RGP(5*n,2);
        end
        
        T_VECTOR(n)=counter/30;
    end
end

end %function


function [ TIMER ] = MAKE_RGP( n ,T )
%% RANDOMALLY BUILDS  GRAPH WITH n NODES WITH T Attribute
%% 
%%

TIMER=0;
G=eye(n);

if T==1     %% for T Attribute
    while (check_T1(G)==0)
        G=ADD_EDGE(G,n);
        TIMER=TIMER+1;
    end
end


if T==2
    while (check_T2(G)==0)
        G=ADD_EDGE(G,n);
        TIMER=TIMER+1;
        
    end
end


end %%function




function [ANS] = check_T1(G)
% Checks if every node in GRAPH satisfies deg(v)>=1. 
% Returns 1/0 accordingly. 
ANS=1; 
s=size(G);
s1=s(1);
sums_vector=zeros(1,s1); 
for i = 1:s1
    for j=1:s1
        sums_vector(i)=sums_vector(i)+G(i,j);
    end
end
for i = 1:s1
    if sums_vector(i)==1
        ANS=0; 
    end
end
end

function [ANS] = check_T11(G)
%%check if every node at G has degree >= 1
%%returns 1 for true 0 for false

temp=1;
ANS=1;
length=size(G,1);
for i=1:length
    for j=1:length
        temp=temp*G(i,j);
    end
    if temp==0
        ANS=0;
    end
end

end


function [ANS] = check_T2(G)
%% run BFS on G
%% translate G for array of exisring points by using
%%spars()
ANS=1;
TEMP_G=sparse(G);

Bar=size(G,1);
Rakefet=size(graphtraverse(TEMP_G,4),2);

if Bar~=Rakefet
    ANS=0;
end
end



function [ G ] = ADD_EDGE(G,n)
%%adds edge to graph G randommaly
%%returnes graph G
%%Yalla maccabi

maccabi=round(rand(1)*(n-1))+1;
Tel_aviv=round(rand(1)*(n-1))+1;

while G(maccabi,Tel_aviv)==1
    maccabi=round(rand(1)*(n-1))+1;
    Tel_aviv=round(rand(1)*(n-1))+1;
end

G(maccabi,Tel_aviv)=1;
G(Tel_aviv,maccabi)=1;
end
    
