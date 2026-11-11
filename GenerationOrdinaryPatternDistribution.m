function P=GenerationOrdinaryPatternDistribution(TS,D,t)
%A=[2 1 1];[I,B]=sort([2 1 1],'descend');
%TS:TimeSeries(Column Vector); D:The order of permutation symbols; t:time separation between elements;
%OP:ordinary pattern 此处显示详细说明
N=size(TS,1);OP=perms([0:D-1]);P=zeros(1,size(OP,1)); 
for i=1:N-(D-1)*t
   ID=[i:t:(i+t*(D-1))];RK=zeros(1,D);%row position in op
   pt=TS(ID,1);[B,I]=sort(pt,'ascend');
   for s=1:D
       id=I(s,1);RK(1,id)=s-1;
   end%s
   for k=1:factorial(D)
   if sum(RK==OP(k,:))==D
     P(1,k)=P(1,k)+1;
   end%
   end%k
end%i
P=P/(N-(D-1)*t);
end

