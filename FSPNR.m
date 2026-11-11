function feature = FSPNR(seq,R,Centrality,D,t)
%UNTITLED2 此处显示有关此函数的摘要
%   seq: original protein sequence
%R: 1 or 2, stand for R1 or R2 relationship maps
%Centrality: 'degree','eigenv','katz','pagerank', represent the four types
%of centrality metrics
%D: embedding dimension of PJSD
%t:embedding lag of PJSD
PL=load('Properties.mat');A=PL.A;
TS=GeneratingSeries(seq,A);
OriginalSeries=[];
for s=1:176
OriginalSeries=[OriginalSeries;TS(s).Series];
end%s
PJSD=NW_PJSD(Standardize(OriginalSeries'),D,t);
if R==1 
    Adjacency=R1_PJSD(PJSD);
elseif R==2
    Adjacency=R2_PJSD(PJSD);
else %default R1
    Adjacency=R1_PJSD(PJSD);
end %if
switch Centrality,
    case 'degree', normalized_centrality=Centrality_Degree(Adjacency);
    case 'eigenv', normalized_centrality=Centrality_EigenVector(Adjacency);
    case 'katz', normalized_centrality=Centrality_KATZ(Adjacency);
    case 'pagerank', normalized_centrality=Centrality_PageRank(Adjacency);
    otherwise, normalized_centrality=Centrality_Degree(Adjacency); 
end%switch
[F,FF]=F_AAPF(seq);
feature=[F';FF';normalized_centrality]; 
end

