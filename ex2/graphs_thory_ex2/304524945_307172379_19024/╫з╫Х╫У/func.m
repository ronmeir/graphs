function [] = func()
X=5:5:100;
for x=5:100
   Y(x)=0.5*x*log(x);
end
plot(Y(X))
end

