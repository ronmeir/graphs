function [M1] = SimulationT1(k)%T1

for i=1:k
    for j=1:20
        u=j*5; %n={5,10,15...100}
        M1(i,j)=RGP(u,1);%T1
       
    end  
end



averageN(M1)
end
 
  