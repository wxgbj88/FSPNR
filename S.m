function S=S(P)
%Shannon Entropy
N=size(P,2);S=0;
for i=1:N
   if P(1,i)>0
    S=S-P(1,i)*log(P(1,i));  
   end%if
end%i
end

