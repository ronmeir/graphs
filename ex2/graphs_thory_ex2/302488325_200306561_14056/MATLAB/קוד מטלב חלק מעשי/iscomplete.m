% Checks whether a graph is complete, i.e. whether every node is
% linked to every other node. Only defined for unweighted graphs.
% INPUTS: adjacency matrix, adj, nxn
% OUTPUTS: Boolean variable, true/false

function [S] = iscomplete(adj)

S=false; % default

n=length(adj);

% all degrees "n-1" 
if (sum(adj)==ones(1,n)*(n-1))
    S=true; 
end
