function [time_output,E_output] = RGP( n,T )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%if T == 1 : we will check T1
%if T == 2 : we will check T2

time = 0;
E = zeros(n,n);
V = [1:n];

Degree = zeros(1,n);
Check_T2 = zeros(1,n);
is_Visit = zeros(1,n);

v_curr              = 1;
v1                  = 0;
v2                  = 0;
is_T                = 0;
flag                = 0;
flag_2              = 0;
is_Check_T2_ones    = 0;
not_connected       = 0;


while(is_T == 0)
        flag = 0;
        if( time ~= (n*(n-1)/2) )
            v1 = randi(n);
            v2 = randi(n);
            %check if v1v2 is in E
            while(v1 == v2 || E(v1,v2) == 1 )
                 v2 = randi(n);
            end

            %update E
             E(v1,v2) = 1;
             E(v2,v1) = 1;

             Degree(v1) = Degree(v1) + 1 ;
             Degree(v2) = Degree(v2) + 1 ;

             time = time + 1;
        end
 
        %check if T exsit
        if( T == 1)
            for vi = 1:n
                if (Degree(vi) == 0)
                    flag = 1;
                    break;
                end
            end

            if (flag == 0)
                is_T = 1;  
            end

        end

        if( T == 2)
           not_connected = BFS(E,1,n);
           if(not_connected == 0 )
               is_T = 1;
           end
        end
            
end
                
time_output = time;
E_output = E;


end
