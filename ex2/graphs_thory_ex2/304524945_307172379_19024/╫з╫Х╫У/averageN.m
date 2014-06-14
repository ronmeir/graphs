function [s] = averageN(M)

s=zeros([1,20]);
for j=1:20
    for i=1:30
        s(1,j)=s(1,j)+M(i,j);
    end
    s(1,j)=s(1,j)/30;
   
end

plot(s) %draw the graph
legend('T1','T2');
hold all %drwing all the graphs on the same axes

end

