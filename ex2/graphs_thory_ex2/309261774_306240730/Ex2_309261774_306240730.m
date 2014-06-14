  
function Main       
        
    function t=RGP(n,T) %  t=Time it Takes to Build Graph Matrix with Quality T.
        
        function x = IsMinOneDegree(Graph) % A function that checks if all Vertices are of Degree 1. 
            x= sum(sum(Graph,2)>0)==size(Graph,1);
        end
    
        function y = IsConnected(Graph) % A function that checks if Graph is Connected.
            if((sum(sum(Graph))/2)>=size(Graph,1)-1)
                [S,C]=graphconncomp(sparse(Graph),'Directed','false');
                y=S==1;
            else
                y=0;
            end
        end

       GraphMat=zeros(n,n); % Generate a Graph of Zeros.
        EndCondition=0; % Initialize while Loop Flag.
        Time=0; % Initialize Time Inidicator.
    
        while (EndCondition~=1 && Time ~= n*(n-1)/2 ) % Do while Quality is not Met , or the Graph isn't Complete. 
      
            i=0;
            j=0;
        
            while(i==j) % Randomize an Index Uniformely. Make Sure it isn't Located on the Main Diagonal.
                   i=int64(random('unif'  ,1,n)); 
                    j=int64(random('unif'  ,1,n));
            end

            if (GraphMat(i,j)==0 )
                    GraphMat(i,j)=1; %Generate an Edge.
                    GraphMat(j,i)=1; % Undirected Graph => Symmetric Copy. 
                    Time=Time+1;    % Increment Time.
            end
        
            if (T==1 && IsMinOneDegree(GraphMat)==1 )  %Check if the RGP Meets the Quality Specified by T.
                 EndCondition=1;
            elseif (T==2 && IsConnected(GraphMat)==1)
                 EndCondition=1;
            end % end-if
       
        end %end-while
 
        t=Time;  % Return Time.
       
    end %end-RGP
 
    clc %Clear Screen
    K=30; %Number of Iterations per. Value.
    for a=5:5:100 %Run on Values {5,10,15,...,100}.
        SumT1=0;
        SumT2=0;
        for b=1:K
             x=RGP(a,1);
             SumT1=SumT1+x;
             y=RGP(a,2);
             SumT2=SumT2+y;
               
              clc
              ProcessPercentage=(((0.2*a-1)*30+b)/(600))*100; %Indicates How Much of the Data has been Processed.
              fprintf(' T1 & T2 Graphs Generation is Executed K=30 Times for the Values (5,10,...,100).\n Average Time for every 30 Iterations is Counted for each Value. \n Processing...  %.2f %%  is done.' , ProcessPercentage) %A Friendly Message.
        
        end
        
        
    AverageT1(a/5)=SumT1/K;
    AverageT2(a/5)=SumT2/K;
   
    
    end

     fprintf('\n Statistics for Random Graph Generation Process can be Viewed in Pop-Up Window. ')
   
     
     % Graph Plot Specs.
     x=linspace(5,100,20);
     y=0.5*x.*log(x);
     plot(5:5:100,AverageT1,5:5:100,AverageT2,x,y)
     title('Average Time for Random Graph Generation with Properties T1 & T2 in 30 Iterations.')
     xlabel('5<|V|<100')
     ylabel('Average Time')
     legend('T1','T2','y(x)=0.5*x*log(x)','location','NorthWest')
     
     
     
  

end

