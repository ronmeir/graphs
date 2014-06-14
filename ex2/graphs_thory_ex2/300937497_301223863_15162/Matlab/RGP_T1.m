function [Mat,Time] = RGP_T1(n)
e=randi([1,n],[1,n]);
Flag=0;
Time=0;
deg=zeros(1,n);
Mat=zeros(n,n);
%%%
while Flag==0
        %%%%% random new edge%%%%
    while Mat(e(1,1),e(1,2))==1
        e=randi([1,n],[1,2]);
    end;%while
    Time=Time+1;                                                %inc time%
    Mat(e(1,1),e(1,2))=1;                                       %update Mat%
    Mat(e(1,2),e(1,1))=1;
    deg(e(1,2))=deg(e(1,2))+1;                             %update vertex deg%
    deg(e(1,1))=deg(e(1,1))+1;
    Flag=1;
    for i=1:n
        if deg(i)==0
            Flag=0;
            break;
        end;%if
    end;%for
    if Time==(n*(n-1))/2
        break;
    end;%if
end;%while
end%func
