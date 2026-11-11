function c=Centrality_PageRank(A)
%UNTITLED10 此处显示有关此函数的摘要%PageRank
%   此处显示详细说明
A=double(A);n=size(A,2);c=zeros(n,1);b=ones(n,1);Lam=zeros(n,1);I=eye(n,n);k=zeros(n,1);
for i=1:n
    for j=1:n
        if i~=j
            if A(i,j)<0
            A(i,j)=0; 
            end %if
        end %if
    end%j
    k(i,1)=sum(A(:,i));
    if k(i,1)<1
       k(i,1)=1; 
    end %if k
end%i
D=diag(k);[V,P]=eig(A);
for i=1:n
    Lam(i,1)=P(i,i); 
end%i
[B,ID]=sort(Lam,'descend');id=ID(1,1);la=B(1,1);a=(1/la)*0.9;c=D*inv(D-a*A)*b;
c=c/max(c);
end

