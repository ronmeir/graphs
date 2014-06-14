% < Simulation RGP of T1 = minDegOne> 
clear all;

resultMatrix = zeros(20,30); % initialize empty matrix to save results
NumOfVertices = 5:5:100; % [ 5 10 15 20 .. 100 ]


for n = 1:20
    for testCase = 1:30;
    [tempGraph,resultMatrix(n,testCase)] = RGP(NumOfVertices(n),1);
    end
end

meanVector = mean(resultMatrix, 2); 
meanVector = transpose(meanVector);

p = plot(NumOfVertices, meanVector);
set(p,'Color','red','LineWidth',2,'Marker','*');
title('Question 7');
xlabel('Number of Vertices');
ylabel('Average time');

hold on;

% < Simulation RGP of T2 = connected > 
clear all;

resultMatrix = zeros(20,30); % initialize empty matrix to save results
NumOfVertices = 5:5:100; % [ 5 10 15 20 .. 100 ]


for n = 1:20
    for testCase = 1:30;
    [tempGraph,resultMatrix(n,testCase)] = RGP(NumOfVertices(n),2);
    end
end

meanVector = mean(resultMatrix, 2); 
meanVector = transpose(meanVector);

p = plot(NumOfVertices, meanVector);
set(p,'Color','blue','LineWidth',2,'Marker','o');


p = plot(NumOfVertices, 0.5*NumOfVertices .* log(NumOfVertices));
set(p,'Color','green','LineWidth',2);

hleg1 = legend('minDegreeOne','Connected Graph','0.5(n)Log(n)');
hold off;
