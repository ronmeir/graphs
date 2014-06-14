syms matrix;
syms time;


disp('question 6')
n=input('please insert the numbers of the vertices ');
while n<0
    n=input('please insert the numbers of the vertices ');
end;
i=input('please insert the numbers 1 or 2 ');
matrix=zeros(n);
time=0;
flag=0;

if i==1
    
      while t1(n,matrix)==1
        
          [matrix,time]=t1_1(time,matrix,n);
           
      end
else
    while length(graphtraverse(sparse(matrix),1,'Directed',true,'Method','BFS'))~=n
        [matrix,time]=t1_1(time,matrix,n);
    end
end
 disp(matrix)
      disp(time)
disp('-----------------')
disp('question 7')

        array=zeros([1,20]);
        array2=zeros([1,20]);
        place=1;
    for index=5:5:100
        
    total=0;
    total2=0;
        for i=1:30
        matrix=zeros(index);time=0;
        matrix2=zeros(index);time2=0;
     while t1(index,matrix)==1
        
          [matrix,time]=t1_1(time,matrix,index);
           
     end
     total=(total+time);
     
       while length(graphtraverse(sparse(matrix2),1,'Directed',true,'Method','BFS'))~=index
        
          [matrix2,time2]=t1_1(time2,matrix2,index);
           
       end
      total2=total2+time2;
        end
       array(place)=total/30;
       array2(place)=total2/30;
       place=place+1;
       
        
    end
  
    
disp('-----------------')
disp('question 8')
z=zeros([1,20]);
for t=1:20
    z(t)=0.5.*(t.*5).*(log(t.*5));
end

t=5:5:100;
hold on

 plot(t,array,'b',t,array2,'r',t,z,'g')

legend('line-t1','line t2','line-0.5x*log(x)');
 title('plot of t1 and t2');
grid on
 xlabel('vertix');
 ylabel('edges');
 


disp('-----------------')
