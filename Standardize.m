function B= Standardize(A)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
%A:input matrix
%B:output matrix
n=size(A,2);m=size(A,1);
for i=1:n
    B(:,i)=(A(:,i)-ones(m,1)*mean(A(:,i)))/std(A(:,i));mi=abs(min(B(:,i)));ma=abs(max(B(:,i)));
    B(:,i)=B(:,i)/max([mi,ma]);
end
end

