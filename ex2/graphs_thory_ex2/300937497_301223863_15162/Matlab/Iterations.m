Times=zeros([2,20]);            %%%AVG
TimesT1=zeros([30,20]);         %%%T1 Samples
TimesT2=zeros([30,20]);         %%%T2 samples
for i=1:20                      %%%amount of checks
   nn=5*i;                      %%%%nodes amount
   for j=1:30                   %%30 iterations
       [M,t]=RGP(nn,1);          %%T1
       TimesT1(j,i)=t;
       Times(1,i)=Times(1,i)+t;
       [M,t]=RGP(nn,2);          %%T2
       TimesT2(j,i)=t;
       Times(2,i)=Times(2,i)+t;
   end
   Times(1,i)=Times(1,i)/30;
   Times(2,i)=Times(2,i)/30;
end