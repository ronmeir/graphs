function [ G,time ] = Graph_G_T2( n )
%GRAPH_GENERATOR generates a graph
%  G is undirected := symetric  matrix
time=0;
G = zeros(n);
SG=sparse(G);
v=graphtraverse(SG,1,'Directed','false','Method','BFS');
while length(v)~=n
i=ceil(rand()*n);
j=ceil(rand()*n);  
    while(G(i,j) ~= 0 || i==j)
        i=ceil(rand()*n);
        j=ceil(rand()*n);
    end%while
G(i,j)=1;
G(j,i)=G(i,j);
time=time+1;
SG=sparse(G);
v=graphtraverse(SG,1,'Directed','false','Method','BFS');
end %while
end
