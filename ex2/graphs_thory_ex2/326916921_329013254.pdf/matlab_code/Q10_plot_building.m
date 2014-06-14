%!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%!!!!!!!!!!running of this function only after running "main"!!!!!!!!!!!!
%!!!!!! this function uses the variables form main  !!!!!
x=1:6:594;                        % create functin y=3.5x
y=[];
for i=1:99

    temp=3.5*x(i);
    y=[y temp];
end

figure                              
plot(time3_array,time2_array,x,y)
xlabel('T3 times');
ylabel('T2 times');
title('dependency of T3 time by T2 time (T2 and T3)');
hleg1 = legend('dependency of T3 time by T2','y=3.5x');
