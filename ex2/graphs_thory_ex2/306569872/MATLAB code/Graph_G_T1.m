function [ G,time ] = Graph_G_T1( n )
%GRAPH_GENERATOR generates a graph
%  G is undirected := symetric  matrix
time=0;
G = zeros(n);
while (T1(G,n)==0)
i=ceil(rand()*n);
j=ceil(rand()*n);  
    while(G(i,j) ~= 0 || i==j)
        i=ceil(rand()*n);
        j=ceil(rand()*n);
    end%while
G(i,j)=1;
G(j,i)=G(i,j);
time=time+1;
end %while
end
