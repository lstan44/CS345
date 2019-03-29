%With your data for Ri and K_H in a file JAN1941sample,
%If you have created a file simpleavg.m containing:
load JAN1941sample
data= JAN1941sample
lon=data(:,1);
lat=data(:,2);
depth=data(:,3);
kh=data(:,5);
ri=data(:,4);
mask=(ri~=-1.e30);
riavg=sum(ri.*mask)/sum(mask);
khavg=sum(kh.*mask)/sum(mask);
%Where the mask is a logical array which masks out the data’s “bad value” -1.e30 so that it is 0 for non-ocean points and 1 for ocean points so only ocean points are included in the statistics
%And “.*” is the MATLAB operator for point by point multiplication of arrays.
%(Remember  “;” at the end of the line stops the result from being written out)
%Then typing “simpleavg” at the matlab command line should  place in variables riavg and khavg and print to the screen the unweighted  average of the Richardson number(stability) and the unweighted average of the Heat Diffusivity (heat mixing) respectively.

