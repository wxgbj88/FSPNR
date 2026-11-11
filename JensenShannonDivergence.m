function DJS =JensenShannonDivergence(P,Q)
%P,Q£ºlist of probability distributions
%timeSeriesData = randn(1, 1000); 
%histogramData = histogram(timeSeriesData,50);
%histogramData.Values
DJS=S((P+Q)/2)-S(P)/2-(Q)/2;
end

