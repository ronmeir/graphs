%!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%!!!!!!!!!!running of this function only after running "main"!!!!!!!!!!!!
%!!!!!! this function uses the variables form main  !!!!!
time1=time1_array*2;           % array of total sums of all degrees 
time2=time2_array*2;           

x=1:99;                        % create functin y=0.45x
y=[];
for i=1:99
    temp=0.45*x(i);
    y=[y temp];
end

for i=1:20                     % calculation average degree 
    time1(i)=time1(i)/n_array(i);
    time2(i)=time2(i)/n_array(i);
end

figure                         
plot(n_array, time1,':r*',n_array,time2,'-.og',x,y)
xlabel('number of vertexes');
ylabel('mean vertex degree');
title('dependency of mean vertex degree by vertexes number');
hleg1 = legend('property T1 mean','property T2 mean','y=0.45x');
