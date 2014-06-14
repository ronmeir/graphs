function [temp] = RGP (n, c)
    M=zeros(n);
    Ecomp = nchoosek(1:n, 2);
    time=0;
    while (((c==1&&(sum(any(M+transpose(M)))~=(n-1))) || (c==2&&(graphconncomp(sparse(transpose(M)),'Directed',false)~=1))) && ~isempty(Ecomp))
        line=randi(size(Ecomp,1));
        cell=Ecomp(line,:);
        Ecomp(line,:)=[];
        M(cell(1),cell(2))=1;
        time=time+1;
    end 
end
