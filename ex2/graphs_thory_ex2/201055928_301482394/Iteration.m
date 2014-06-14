sum=0;
avg1=zeros(1,20);
for n=5:5:100
for i=1:30
avg1(1,n/5)=avg1(1,n/5) + RGP(n, c);
end
end
sum=0;
avg2=zeros(1,20);
for n=5:5:100
for i=1:30
avg2(1,n/5)=avg2(1,n/5) + RGP(n, c);
end
end

avg1=avg1/30;
avg2=avg2/30;

x=5:5:100;
plot(x, avg1, x, avg2, x, 0.5*x.*log(x))