function [] =ex2()

t1_meas=zeros(20,30);
t2_meas=zeros(20,30);

for i=1:20
    for k=1:30
        t1_meas(i,k)=RGP(i*5,1);
        t2_meas(i,k)=RGP(i*5,2);
    end
end

t1_avg=sum(t1_meas')/30;
t2_avg=sum(t2_meas')/30;
x=zeros([1,20]);
for v=1:20
    x(v)=0.5.*(v.*5).*(log(v.*5));
end


%create result graph
nodes=5:5:100;
hold on
plot(nodes,t1_avg,'b',nodes,t2_avg,'r',nodes,x,'g')
legend('T1','T2','0.5x*log(x)');
grid on
 xlabel('Nodes');
 
 
 ylabel('Time');
 
 
 