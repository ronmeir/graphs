disp('processing Q7');
[samplesT1,samplesT2]=q7();

disp('Print Graph');
y=zeros([1,20]);
x=1;
while x<21
    y(x)=0.5.*(5*x).*(log(5*x));
    x=x+1;
end

x=5:5:100;
hold on

 plot(x,samplesT1,'cyan',x,samplesT2,'b',x,y,'g')
 xlabel('V');
 ylabel('E');
legend('T1','T2','y(x)');
