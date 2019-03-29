thickness % Extracts ri and kh from a file calculates ocean mask finds width.
% Establish weight as thickness times mask.
wt=width.*mask'
%Initialize sums
sumwt=0.;
sumwtri=0.;
sumwtkh=0.;
for k=1:n
    sumwt=sumwt+wt(k);
    sumwtri=sumwtri+wt(k)*ri(k);
    sumwtkh=sumwtkh+wt(k)*kh(k);
end
riwtav=sumwtri/sumwt
khwtav=sumwtkh/sumwt
