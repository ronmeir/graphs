tic;
average1=0;
average2=0;
vec=5:5:100;

for i=1:30
[T1,Time]=arrayfun( @(x) RGP(x, 1), vec,'un',0);
average1=average1+cell2mat(Time);
end; 
average1=average1/30

for i=1:30
[T1,Time]=arrayfun( @(x) RGP(x, 2), vec,'un',0);
average2=average2+cell2mat(Time);
end; 
average2=average2/30

x=5:0.1:100;
y = (x/2).*log(x);

plot(vec,average1,'r') 
hold
plot(vec,average2,'b')
plot(x,y,'g')
toc