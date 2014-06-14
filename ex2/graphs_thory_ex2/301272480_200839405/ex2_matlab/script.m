%%%%%%%% Q 7 %%%%%%%
%% Run RGP for n=5..10..100
%% each value executed 30 times 
%% return avarage 

T1_VECTOR=RGP(1);
T2_VECTOR=RGP(2);



%%%%%%%% Q 8 %%%%%%%
%% Plot avarage of T1,T2 & 1/2*x*log(x) 

x=5:5:100;
y=0.5*x.*log(x);


%%Plot
 plot(x,T1_VECTOR,'-or'); hold on;  plot(x,T2_VECTOR,'-.ob'); plot(x,y,'--og')
 legend('T1','T2','y=0.5*X*LOG(X)','Location','NorthWest')
 hold off; 

 
 
 
 
 %%%%%%%% Q 9 %%%%%%%
%% Avarage Deg of G(T1) & G(T2)

2.*T1_VECTOR./x;
2.*T2_VECTOR./x;
