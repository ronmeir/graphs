% Determine if a graph is connected

% Theorem 10.17 Let G be a graph with V = {v1, v2, ..., vn} and let X
% be the adjacency matrixofG.LetY =[yij]be the matrix Y =X+X^2+...+X^n?1.
% Then G is connected if and only if for all distinct i, j, Yi,j ~= 0.
% That is, if and only if Y has no zero entries off the main diagonal.

% INPUTS: adjacency matrix
% OUTPUTS: Boolean variable {0,1}

function [S] = isconnected(adj)

% we first check if there is any isolated node
if not(isempty(find(sum(adj)==0, 1))); S = false; return; end 

% get row length 
n = length(adj);

x = graphtraverse(sparse(adj), 1,'Directed',false,'Method','BFS');

if (length(x) == n)
    S = 1;
else
    S = 0;
end

end

