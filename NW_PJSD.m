function A=NW_PJSD(AllSeries,D,t)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
K=size(AllSeries,2);A=zeros(K,K); 
for i=1:K-1
    for j=i+1:K
    A(i,j)=PermutationJensenShannonDistance(AllSeries(:,i),AllSeries(:,j),D,t);A(j,i)=A(i,j);
    end%j
end %i
end
