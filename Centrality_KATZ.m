function c=Centrality_KATZ(A)
%UNTITLED9 此处显示有关此函数的摘要%KATZ Centrality
%   此处显示详细说明
A=double(A);n=size(A,2);c=zeros(n,1);b=ones(n,1);Lam=zeros(n,1);I=eye(n,n);
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
    Lam(i,1)=D(i,i); 
end%i
[B,ID]=sort(Lam,'descend');id=ID(1,1);la=B(1,1);a=(1/la)*0.9;c=inv(I-a*A)*b;
c=c/max(c);
end

