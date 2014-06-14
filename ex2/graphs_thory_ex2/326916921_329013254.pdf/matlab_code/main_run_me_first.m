% It is main function that builds three graphs with different 
%property T1 T2 and T3
T=1;
n=5;
n_array=[];
time1_array=[];           % building time of the graph with property T1
time2_array=[];           % building time of the graph with property T2
time3_array=[];           % building time of the graph with property T3
k=30;                     % number of iterations
total_time=0;

%###### property T1 ######
for j=1:20                          % n={5,10,15...100}
    for i=1:k                       % k iterations
        [G1,time]=RGP(n,T);          % building graph
        total_time=total_time+time;
    end
    time=total_time/k;              % calculation average time
    n_array=[n_array n];            % save vertex number
    time1_array=[time1_array time]; % save average time
    n=n+5;
end



%###### property T2 ######
T=2;
n=5;
total_time=0;
for j=1:20                    % same loop with T2
    for i=1:k
        [G2,time]=RGP(n,T);
        total_time=total_time+time;
    end
    time=total_time/k;
    time2_array=[time2_array time];
    n=n+5;
end

%###### property T3 ######
T=3;
n=5;
total_time=0;
for j=1:20                    % same loop with T3
    for i=1:k
        [G3,time]=RGP(n,T);
        total_time=total_time+time;
    end
    time=total_time/k;
    time3_array=[time3_array time];
    n=n+5;
end



x=1:99;                        % create functin y=0.5xlog(x)
y=[];
for i=1:99
    temp=0.5*x(i)*log(x(i));
    y=[y temp];
end
    

%### building first plot (timeT1, timeT2 and y=0.5xlog(x) ###
figure                         
plot(n_array, time1_array,':r*',n_array,time2_array,'-.og',x,y)
xlabel('number of vertex');
ylabel('time of graph building');
title('dependency of time by vertex number');
hleg1 = legend('property T1','property T2','y=0.5xlog(x)');

