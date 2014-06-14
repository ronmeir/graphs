X = 5:5:100;
A = AverageDeg(X);
B = AverageCon(X);
C = arrayfun(@(x) (x/2)*log(x) , 5:5:100);
plot(X,A,'r',X,B,'b',X,C,'g')
legend('T1 - OneDegree','T2 - Connected','y=x/2 * log(x)')
axis([0,100,0,250])