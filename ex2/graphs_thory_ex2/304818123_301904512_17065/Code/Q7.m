function [avg_1_out,avg_2_out ] = Q7()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


Simulation_T1   = zeros(20,30);
Simulation_T2   = zeros(20,30);
avg_1           = zeros(1,20); 
avg_2           = zeros(1,20); 
n = 5;

for i = 1:20
    for j = 1:30
        Simulation_T1(i,j) = RGP(n,1);
    end
    n = n + 5;
end

n = 5;
for i = 1:20
    for j = 1:30
       Simulation_T2(i,j) = RGP(n,2);
    end
    n = n + 5;
end


avg_1 = sum(Simulation_T1,2)/ 30;
avg_2 = sum(Simulation_T2,2)/ 30;

avg_1_out = round(avg_1);
avg_2_out = round(avg_2);

disp(avg_1_out);
disp(avg_2_out);
end

