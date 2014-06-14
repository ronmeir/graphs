function [ Mat,Time ] = RPG_T2(n)
e=randi([1,n],[1,n]);
Time=0;
Mat=zeros(n,n);

while graphconncomp(sparse(Mat))~=1
            %%%%% random new edge%%%%
    while Mat(e(1,1),e(1,2))==1
        e=randi([1,n],[1,2]);
    end;%while
    Time=Time+1;                                                %inc time%
    Mat(e(1,1),e(1,2))=1;                                       %update Mat%
    Mat(e(1,2),e(1,1))=1;
end
end

