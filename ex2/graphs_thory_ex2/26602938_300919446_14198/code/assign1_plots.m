function [] =assign1_plots()

res1=zeros(20,30);

res2=zeros(20,30);
% This part of code generate 30 grpahs over vales {5,10,15,...,100}
for i=1:20 

    for k=1:30

        res1(i,k)=assign1(i*5,1);

        res2(i,k)=assign1(i*5,2);

    end

end

% calculate avrage time simulation
t1_avg=sum(res1')/30;

t2_avg=sum(res2')/30;

x=zeros([1,20]);

for t=1:20

    x(t)=0.5.*(t.*5).*(log(t.*5)); % generate the function x(t)

end

t=5:5:100;

hold on

plot(t,t1_avg,'b',t,t2_avg,'r',t,x,'g') % plot the avrage

legend('T1','T2','0.5x*log(x)');

grid on

 xlabel('vertix');

 ylabel('time');