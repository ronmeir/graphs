function [] = sevenNeight()
    n=5:5:100;
    AggTime1Arr=zeros(1,100);  
    AggTime2Arr=zeros(1,100);
    for i=5:5:100
        y(i)=0.5*n(i/5)*log(n(i/5));
        for j=1:30
            [G,time1]=RGP(n(i/5),1);
            [G,time2]=RGP(n(i/5),2);
            AggTime1Arr(i)= time1 + AggTime1Arr(i);
            AggTime2Arr(i)= time2 + AggTime2Arr(i);
        end
    end
    
    MeanTime1Arr=AggTime1Arr/30;
    MeanTime2Arr=AggTime2Arr/30;
    
    hold on;
    
    bar(MeanTime1Arr,'r');
    bar(MeanTime2Arr,'b');
    bar(y,'g')
   
end

