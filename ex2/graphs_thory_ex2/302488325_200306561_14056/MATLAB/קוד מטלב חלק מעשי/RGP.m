% RGP function (random graph generation process)
% INPUTS: Number of vertices n, Property T
% OUTPUTS: adjacency matrix G, time elapsed

function [G, time] = RGP(n,T)
% RGP Function

Matrix = zeros (n,n);
time = 0;

    switch (T)
        case 1
            Property = isMinDegreeOne(Matrix);
        case 2
            Property = isconnected(Matrix);
        otherwise
            fprintf('Invalid property');
    end;        
            

    while (not (Property))
       
        if (not (iscomplete(Matrix)))
            
            % Generate x,y coordinate
            x = randi([1, n]);
            y = randi([1, n]);
            while (y==x)
                x = randi([1, n]);
                y = randi([1, n]);
            end
            
            if (not (Matrix(x,y)))
                % add edge to the grpah (undirected), at (x,y) & (y,x)
                Matrix(x,y) = 1;
                Matrix(y,x) = 1;
                time = time + 1;
            end
            
        
        end %endif
        
            % Check Testcase
        switch (T)
            case 1
                Property = isMinDegreeOne(Matrix);
            case 2
               Property = isconnected(Matrix);
            otherwise
                fprintf('Invalid property');
        end;    
    end    
G = Matrix;

end


