function Ex2_300338654_312927981
function time = RGP(n,T)
    time=0;
    implementT=false;
    G=zeros(n,n);                 % adjacency matrix   
    max_edges=n*(n-1)/2;        % max number of edges
    while (~implementT && time~=max_edges)          % check if any T is still not reached its condition
     row=0;
     column=0;
     while(row==column)%randomize to make sure row!=column
         row=int64(random('unif' ,1,n));
        column=int64(random('unif' ,1,n));
     end%while row!=column
        if(G(row,column)~=1)
            time=time+1;
            G(row,column)=1;
            G(column,row)=1;
            
        end%if!=1
        degree= sum(sum(G,2)>0)==size(G,1);
        graph=sparse(G);
       if((sum(sum(G))/2)>=size(G,1)-1)
           [S,C]=graphconncomp(graph,'Directed','false');
                connectedG=S==1;
            else
                connectedG=0;
            end
        
        if(degree==1 && T==1)
          implementT=true;
        elseif(connectedG==1 && T==2)
          implementT=true;

        end%if-else if
    end%while  
        
    
end%RGP

for valCtr=5:5:100 
T1Calc=0;%calculation to find avrege in T1
T2Calc=0;%calculation to find avrege in T2
for iterationsCtr=1:30
    T1time=RGP(valCtr,1);
   
    T1Calc=T1Calc+T1time;
     T2time=RGP(valCtr,2);
    T2Calc=T2Calc+T2time;
    clc
    
end%for iterationsCtr
averageT1Calc(valCtr/5)=T1Calc/30;
averageT2Calc(valCtr/5)=T2Calc/30;
end%for valCtr
X=linspace(5,100,20);
Y=0.5*X.*log(X);
plot(5:5:100,averageT1Calc,5:5:100,averageT2Calc,X,Y)
legend('T1','T2','Y(X)=0.5*X*log(X)')

end