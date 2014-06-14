function [Nmatrix,Ntime]=AddE(time,matrix,v)
% add an edge to the graph
if( time~=(v*(v-1)/2))
    x=randi(v); 
    y=randi(v);
   while(x==y || matrix(x,y)==1)
         x=randi(v); 
         y=randi(v);
   end
   matrix(x,y)=1;
   matrix(y,x)=1;
   
   Nmatrix=matrix;
   Ntime=time+1;
end
end

