function [ is_connected ] = BFS( E,s,n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% White - 1
% Gray  - 2
% Black - 3
% Null  - (-1)

Color           = ones(1,n);
Perant          = (-1)*ones(1,n);
Dist            = zeros(1,n);
Q               = zeros(1,10*n);
Q_pointer       = -1;
Q_size          = 0;
agj_u           = zeros(1,n); 
not_conncted    = 0;



for vi = 1:n
    Color(vi)   = 1;
    Perant(vi)  = -1;
    Dist(vi)    = n;    %In graph with n vertics, the maximum degree is n-1.
end

Color(s)  = 2;
Dist(s) = 0;

%enqeue s
Q(1)        = s;
Q_pointer   = 1;
Q_size      = Q_size + 1;

while (Q_size ~= 0)
    u = Q(Q_pointer);
    
    for vi = 1:n
        if( E(u,vi) == 1)
            agj_u(vi) = 1;
        end
    end
    
    for vi = 1:n
        if( agj_u(vi) == 1 )
            if ( Color(vi) == 1 )
                Color(vi) = 2;
                Dist(vi) = Dist(u) + 1;
                Perant(vi) = u;
                
                Q_size = Q_size + 1;
                Q(Q_size) = vi;
                
            end
        end
    end
    
    Q_pointer = Q_pointer + 1;
    Q_size = Q_size - 1;
    Color(u) = 3;
    
    if ( Q(Q_pointer) == 0 )
        Q_size = 0;
    end
    
end


%Check if graph connected
for vi = 1:n
    %It means that we can't reach this vertics from any other vertics
    if ( Dist(vi) == n )
        not_conncted = 1;
    end
end

is_connected = not_conncted;

end

