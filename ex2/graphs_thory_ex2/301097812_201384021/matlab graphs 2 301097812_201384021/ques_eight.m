function [] = ques_eight()
    n=5:5:100;
    MeanTime1=zeros(1,100);  
    MeanTime2=zeros(1,100);
    y=zeros(1,100);
    for (i=5:5:100)
      y(i)=0.5*n(i/5)*log(n(i/5));
            for (j=1:30)
                [G,temp1]=RGP(n(i/5),1);
                [G,temp2]=RGP(n(i/5),2);
                MeanTime1(i)=MeanTime1(i)+temp1;
                MeanTime2(i)=MeanTime2(i)+temp2;
            end
    end
    MeanTime1=MeanTime1/30;
    MeanTime2=MeanTime2/30;
    bar(MeanTime1,'r');
    hold on;
    bar(MeanTime2,'b');
    bar(y,'g')
    
    
   
    
end

