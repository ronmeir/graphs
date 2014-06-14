function [time, G] = GraphTheory_Assignment2(n,T)
%Random Graph Generation process
%T=1: G -> d(v)>=1
%T=2: G -> Connectability
%T=3: G -> One Circle

%/////////////////////// Reseting
G = zeros(n);
time = 0;
a = floor(rand(1)*n)+1;
b = floor(rand(1)*n)+1;
%///////////////////////

while ((time<(n*(n-1))) && Cond(T,G))
    while ((G(a,b)==1) || (a==b))
        a = floor(rand(1)*n)+1;
        b = floor(rand(1)*n)+1;
    end
    G(a,b) = 1;                 %For Symmetry
    G(b,a) = 1;
    time = time + 1;
end
%view(biograph(G))           %//Debug
end

function [ LogicAnswer ] = Cond(T,G)
%Condotion's Validation
% LogicAnswer: 1-> False, 0-> True
%////////////////////////////////////////////////////
if(T==1)                           %T=1: G -> d(v)>=1
    sum = 0;
    for i=1:size(G,1)
        for j=1:size(G,1)
            sum = sum + G(i,j);    %Sum all the row
        end
        if (sum==0)                %If d(V)==0 then return false
             LogicAnswer = 1;
             return
        end
    sum = 0;
    end     
    LogicAnswer = 0;   % every d(v) >= 1 
end

if(T==2)                           %T=2: G -> Connectability
     S = sparse(G);
     if (graphconncomp(S,'Directed', false)==1)       %graphconncomp returns the number of conectability elements (BFS - O(n))
          LogicAnswer = 0;
     else LogicAnswer = 1;
     end
end
%//////////////////////////////////////////////////////////////
%if(T==3)                           %T=3: G -> One Circle
    %P = G.*triu(ones(size(G,1)));  % triu computes nxn Upper Triangle matrix
    %for k=2:size(G,1)
      %if trace(P^k) ~= 0
         %LogicAnswer = 0;
         %return
      %end
    %end
    %LogicAnswer = 1;    
%end
%//////////////////////////////////////////////////////////////
end

