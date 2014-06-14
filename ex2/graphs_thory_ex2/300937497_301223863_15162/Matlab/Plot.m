X=5:5:100;
for x=5:100
    Y(x)=0.5*x*log(x);
end
plot(X,Times(1,1:20),'r',X,Times(2,1:20),'y',X,Y(X),'g')
legend('T1','T2','Y(x)');
