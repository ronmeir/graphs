function [M2] = SimulationT2(k)%T2

for i=1:k
    for j=1:20
        u=j*5; %n={5,10,15...100}
        M2(i,j)=RGP(u,2);%T1
       
    end  
end



averageN(M2)
end
 
  