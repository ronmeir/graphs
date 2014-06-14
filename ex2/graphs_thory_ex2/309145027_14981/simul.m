TimeAvg = 0;
mx = 30;
N = 5:5:100;
Gra = 5:5:100;
i = 1;
u = 1;

for k=5:5:100
for q=1:mx
 TimeAvg = TimeAvg + RGP(k,1); 
 [L,C]=RGP(k,1);
 avgy(1,u) =  sum(sum(transpose(C))+sum(C))/k;
 u = u +1;
end
fprintf('N = %d , T1 Time avg: %.3f\n', k , TimeAvg/mx )
Gra(1,i) = TimeAvg/mx;
i = i + 1;
TimeAvg = 0;
end
u=1;

figure
N1 = N;
Gra1 = Gra;
plot(N1,Gra1)
title('T1 Avg number of Iterations')
xlabel('n')
ylabel('Avg Iterations')
i = 1;
for k=5:5:100
for q=1:mx
 TimeAvg = TimeAvg + RGP(k,2);
 [L,C]=RGP(k,2);
  avgy2(1,u) =  sum(sum(transpose(C))+sum(C))/k;
 u = u +1;
end
fprintf('N = %d , T2 Time avg: %.3f\n', k , TimeAvg/mx )
Gra(1,i) = TimeAvg/mx;
i = i + 1;
TimeAvg = 0;
end


figure

N2 = N;
Gra2 = Gra;
plot(N2,Gra2)
title('T2 Avg number of Iterations')
xlabel('n')
ylabel('Avg Iterations')
i = 1;

x=5:5:100;
y= 0.5*log(x).*x;
figure
plot(x,y);
title('y(x) = 0.5*x*log(x)')
xlabel('x')
ylabel('y(x)')



x=1:1:600;
figure
plot(x,avgy,x,avgy2)
title('Avg Deg of T1(Blue) , T2 (Green)')
xlabel('Graph No.')
ylabel('Avg Node Deg')

for k=5:5:100
for q=1:mx
 TimeAvg = TimeAvg + RGP(k,3);
end
fprintf('N = %d , T3 Time avg: %.3f\n', k , TimeAvg/mx )
Gra(1,i) = TimeAvg/mx;
i = i + 1;
TimeAvg = 0;
end
figure

N3 = N;
Gra3 = Gra;
plot(N2,Gra2,N3,Gra3)
title('T2 vs T3')
xlabel('n')
ylabel('Avg Iterations')


fprintf('TOTAL AVG TIME OF T1: %.3f\n',sum(Gra1)/20)
fprintf('TOTAL AVG TIME OF T2: %.3f\n',sum(Gra2)/20)
fprintf('Avg Deg of T1: %.3f\n',sum(avgy)/600 )
fprintf('Avg Deg of T2: %.3f\n',sum(avgy2)/600 )