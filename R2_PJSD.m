function R=R2_PJSD(D)
%UNTITLED2 此处显示有关此函数的摘要
%R:input CR matrix
N=size(D,1);R=eye(N);
for i=1:N-1
    for j=i+1:N
        R(i,j)=1/(D(i,j)+1);R(j,i)=R(i,j);
    end %j
end %i
end