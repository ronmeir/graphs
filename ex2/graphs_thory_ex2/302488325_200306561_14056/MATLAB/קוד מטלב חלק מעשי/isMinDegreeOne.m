% Determine if a graph is has minimum degree of 1
% INPUTS: adjacency matrix
% OUTPUTS: Boolean variable {0,1}

function [S] = isMinDegreeOne(adj)

% we first check if there is any isolated node
if not(isempty(find(sum(adj)==0, 1))); S = 0; return; end 

S = 1;
return;

end


