%%%%%%%%%%%%%%%% Insert scripts AvgTime.m and GenerateGraph.m to script folder %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% Paste the whole code in MATLAB and wait a litle bit           %%%%%%%%%%%%%%


%1.
	%An example from real life is to bind T2 with maximum degree of 2 and get a
	%Minimal Spanning Tree and use it to pave roads with minimal cost.

%2.
	%One property is that every node has exactly degree of 1. This means that if one
	%node is at degree 2 the while loop will never end. We will call this graph G.
	%A second property is to achieve the graph G' which is almost as impossible as getting G.
	%The similiar part about these properties is that they are both about degrees,
	%and getting a specific degree in a random generated graph is almost impossible to
	%achieve.

%3.
	%T1 is a sub-process of T2, because if T2 is achieved -> T1 is achieved as well.
	%This means that for every number of nodes T2 is SLOWER than T1.

%4.
	%We assume that the difference in times will be the lower bound of T2 - lower bound of T1
	%or in other words: n-1-n/2 = n/2-1
	

%5. 
	%The lower-bound for T1 is n/2 because if we connect every two nodes with one edge
	%we get that each node has a degree of 1 and this is exactly T1. 

%6. See attached file GenerateGraph.m

%7.
[T1,T2] = AvgTime() %Stores avarage times in T1,T2

%8.abc
nvalues = [5:5:100]; %Create vector of number of nodes
	plot(nvalues,T1,nvalues,T2,nvalues,0.5*nvalues.*log(nvalues)) %Plot all 3 graphs
		xlabel('Number of nodes');
		ylabel('Time');
		legend('T1','T2','0.5*x*log(x)','Location','NorthWest');

%9.
	%a. The difference is the avarage time for T2 minus the avarage time for T1 or:
	%	plot(nvalues,T2-T1);
	%b. The difference turns out like this because property T1 is a sub-property of T2
	%   and so for a small number of nodes the difference is minor, but as we enter more and more
	%   nodes the difference becomes greater as it becomes less probable for the graph to be connected.
	%c. These outcomes for the difference between T2 and T1 turn out to be as we expected in question #4.
	%d. The avarage degree for T1 is 1 which makes sense because when T1 is accomplished we have at least
	%   degree of 1 for every node. Divided by n this will give an answer around 1.
	%   For T2 we get that if we enter the vector nvalues as number of nodes we get that the avarage degree
	%   is 2.

%10.
	%If we have T2 and T3 is still unachieved then we have a Tree which has n-1 edges in T2 time.
	%In this case if we add one more edge then we have a circle and T3 is achieved.
	%This means that the upper-bound for T3 is LowerBound(T2)+1.

%11.
	%If the upper bound for T3 is the LowerBound for T2+1 then T3 is expected to occur
	%before T2.
	