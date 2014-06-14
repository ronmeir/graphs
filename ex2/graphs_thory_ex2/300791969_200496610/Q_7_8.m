function [] = Q_7_8(K)
    j=1;
    X=zeros(1,20);
    A=zeros(1,20);
    B=zeros(1,20);
    C=zeros(1,20);
    
    for n=5:5:100
        X(j)=n;
        for i=1:K,
            %A
            [~,time]=RGP(n,@isT1);
            A(j) = time + A(j);
            
            %B
            [~,time]=RGP(n,@isT2);
            B(j) = time + B(j);
        end
        
        A(j) = A(j)/K;
        B(j) = B(j)/K;
        C(j) = 0.5*n*log(n);
        
        j=j+1;
    end
    
    figure();
    plot(X,A,'b',X,B,'r',X,C,'g')
    legend ('A-T1','B-T2','C-log');
    xlabel('n');
    ylabel('AverageTime for each n');
end
