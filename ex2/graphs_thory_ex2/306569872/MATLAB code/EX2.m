n_avg_T1_T2 = [5:5:100 ; zeros(1,20) ; zeros(1,20) ;zeros(1,20)];
%avg for T1
k=30;
cum_time  = 0;
for i=1:20
    for j=1:k
        [G t] = Graph_G_T1(n_avg_T1_T2(1,i));
        %plot Graph 
        %print_graph(G,n_avg_T1_T2(1,i))
        %result = input('enter');
        cum_time = cum_time + t;
    end
    n_avg_T1_T2(2,i) = cum_time/k;
    cum_time = 0;
end

%avg for T2
k=30;
cum_time  = 0;
for i=1:20
    for j=1:k
        [G t] = Graph_G_T2(n_avg_T1_T2(1,i));
         %plot Graph 
         %print_graph(G,n_avg_T1_T2(1,i))
         %result = input('enter');
        cum_time = cum_time + t;
    end
    n_avg_T1_T2(3,i) = cum_time/k;
    cum_time = 0;
end

%0.5Xlog(x)
for i=1:20
    n_avg_T1_T2(4,i) = 0.5*n_avg_T1_T2(1,i)*log(n_avg_T1_T2(1,i));
end

plot(n_avg_T1_T2(1,:),n_avg_T1_T2(2,:),n_avg_T1_T2(1,:),n_avg_T1_T2(3,:),n_avg_T1_T2(1,:),n_avg_T1_T2(4,:))
grid on
axis square
legend('T1','T2','0.5xlog(x)')
xlabel('n')
ylabel('avg   time')