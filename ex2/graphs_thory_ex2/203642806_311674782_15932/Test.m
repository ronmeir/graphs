function [T1_Avarage,T2_Avarage] = Test(N,k)
%Test Performs multyply calculations on RPG Function
%N: Vector of the n's
%K: The number of repetitions for the avarage
T1_Avarage = ones(size(N,2),1)'.*0;
T2_Avarage = ones(size(N,2),1)'.*0;

for i=1:k
    for j=1:size(N,2)
        T1_Avarage(j) = T1_Avarage(j) + GraphTheory_Assignment2(N(j),1);
        T2_Avarage(j) = T2_Avarage(j) + GraphTheory_Assignment2(N(j),2);
    end
end
T1_Avarage = T1_Avarage/k;
T2_Avarage = T2_Avarage/k;
end

