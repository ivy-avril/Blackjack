function H = GetHits(Pre,i)
% Return all the possible combination given case number and Pre

H = nchoosek(repmat([1:Pre+1-i],1,6),i);
H = unique(H,'rows');
z = sum(H,2) > Pre;
H(z,:) = [];

end
