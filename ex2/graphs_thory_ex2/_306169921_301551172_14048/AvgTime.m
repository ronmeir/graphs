function[AvgTime1,AvgTime2] = AvgTime()

AvgTime1 = zeros(1,20);
AvgTime2 = zeros(1,20);

for i = 5:5:100
    for j = 1:30
        AvgTime1(1,i/5)=AvgTime1(1,i/5)+GenerateGraph(i,1);
        AvgTime2(1,i/5)=AvgTime2(1,i/5)+GenerateGraph(i,2);
    end
end
AvgTime1=AvgTime1/30;        
AvgTime2=AvgTime2/30;
