function [] = Q9d()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[array_1,array_2]=Q7();
n=5;
sum_avg_degree_1 = 0;
sum_avg_degree_2 = 0;
for i=1:20
 
  sum_avg_degree_1 = sum_avg_degree_1 + ((array_1(i)*2)/n);
    sum_avg_degree_2 = sum_avg_degree_2 + ((array_2(i)*2)/n);
   n=n+5;
end
avg_degree_1=sum_avg_degree_1/20;
avg_degree_1 = round(avg_degree_1);
disp(avg_degree_1)

avg_degree_2=sum_avg_degree_2/20;
avg_degree_2 = round(avg_degree_2);
disp(avg_degree_2)

end

