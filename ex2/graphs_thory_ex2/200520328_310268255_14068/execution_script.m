%Question 7 -- Simulation of RGP algorithm for values of n={5,10,...,100},
%each value of n is executed 30 times and an average is returned. 
T1_Property=RUN_RGP(1); %%
T2_Property=RUN_RGP(2);

%Question 8- plot Averege of T1, Averege of T2 and 0.5*x*log(x)
x=5:5:100;
y=0.5*x.*log(x);


 plot(x,T1_Property,'-or'); hold on;  plot(x,T2_Property,'-.ob'); plot(x,y,'--og')
 legend('T1_Property','T2_Property','y','Location','NorthWest')
 hold off; 
 
 %Question 9.d) average degree of vertex in G(T1),G(T2
2.*T1_Property./x
2.*T2_Property./x