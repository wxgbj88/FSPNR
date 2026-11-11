function TS=GeneratingSeries(sequence,A)
%UNTITLED 此处显示有关此函数的摘要
% A: Struct of 170 amino acid properties
str=char('ARNDCQEGHILKMFPSTWYV');sequence=upper(sequence);
for s=1:176
    TS(s).P=A(s).P;TS(s).Series=zeros(1,length(sequence));
end%s
for i=1:length(sequence)
    for k=1:20 %index in str
       if find(sequence(1,i)==str(1,k))>0
           for s=1:176 %index of properties
               TS(s).Series(1,i)=A(s).V(1,k);
           end%s
           break;
       end%if 
    end%j
end%i
end

