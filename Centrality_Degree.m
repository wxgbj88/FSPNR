function c=Centrality_Degree(A)
%UNTITLED5 此处显示有关此函数的摘要%Degree centrality
%   此处显示详细说明
n=size(A,2);c=zeros(n,1);
for i=1:n
    c(i,1)=sum(A(i,:));
end%i
c=c/max(c);
end

