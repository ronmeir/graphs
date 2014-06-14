function [ Mat,Time ] = RGP( n,T )
if T==1
    [Mat,Time]=RGP_T1(n);
end
if T==2
    [Mat,Time]=RGP_T2(n);
end



end

