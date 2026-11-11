function PJSD=PermutationJensenShannonDistance(TS1,TS2,D,t)
%UNTITLED3 此处显示有关此函数的摘要
 P=GenerationOrdinaryPatternDistribution(TS1,D,t);
 Q=GenerationOrdinaryPatternDistribution(TS2,D,t);
 PJSD=JensenShannonDivergence(P,Q);
end

