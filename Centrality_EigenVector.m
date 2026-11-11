function c=Centrality_EigenVector(A)
%UNTITLED7 此处显示有关此函数的摘要%Eigenvector centrality
%   此处显示详细说明
A=double(A);n=size(A,2);c=zeros(n,1);Lam=zeros(n,1); 
for i=1:n
    for j=1:n
        if i~=j
            if A(i,j)<0
            A(i,j)=0; 
            end %if
        end %if
    end%j
end%i
[V,D]=eig(A);
for i=1:n
    Lam(i,1)=abs(D(i,i)); 
end%i
[B,I]=sort(Lam,'descend');id=I(1,1);c=V(:,id);%la=B(1,1);la=D(id,id);
c=c/max(c);
end

