function [F,AAPF]=F_AAPF(seq)
seq=upper(seq)
char='ARNDCQEGHILKMFPSTWYV';
[AAC,DIC]=Composition(seq,char);FA(1,:)=AAC';FD(1,:)=DIC(:)';F=FA;AAPF=FD;
end