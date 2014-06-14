function [] = Draw_graph(K)
N = zeros(20,1); avg1 = zeros(20,1); avg2 = zeros(20,1);avg3 = zeros(20,1);j=0;
for n=5:5:100,
    j=j+1;
    N(j)=n;
    for i=1:K,
         [~,t]=RGP(n,@T1);
         avg1(j)=t+avg1(j);
         [~,t]=RGP(n,@T2);
         avg2(j)=t+avg2(j);
    end
    avg1(j)=avg1(j)/K;
    avg2(j)=avg2(j)/K;
    avg3(j)=0.5*n*log(n);
end

figure;plot(N,avg1,'r-',N,avg2,'b-',N,avg3,'g-')
legend('T1','T2','0.5xlog(x)');


