function [samplesT1res,samplesT2res]=q7()
	samplesT1res=zeros([1,20]);
	samplesT2res=zeros([1,20]);
for i=5:5:100
    sum1=0;
	sum2=0;

    for j=1:30
	       time1=0;
	       time2=0;
		   matrix1=zeros(i);
			matrix2=zeros(i);
        while(Pairing(i,matrix1)==0)
             	[matrix1,time1]=AddE(time1,matrix1,i);
        end
        while length (graphtraverse(sparse(matrix2),1,'Directed',true,'Method','BFS'))~=i
              	[matrix2,time2]= AddE(time2,matrix2,i);
        end
        	sum1=sum1+time1;
			sum2=sum2+time2;
    end
samplesT1res(i/5)=sum1/30;
samplesT2res(i/5)=sum2/30;    
end