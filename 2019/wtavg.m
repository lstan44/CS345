%190215-0301AH Program to do a depth weighted average.
load JAN1941sample
data= JAN1941sample
lon=data(:,1);
lat=data(:,2);
depth=data(:,3);
kh=data(:,5);
ri=data(:,4);
mask=(ri~=-1.e30);
thickness;
thick=thick';
riavg=sum(ri.*mask.*thick)/sum(mask.*thick)
khavg=sum(kh.*mask.*thick)/sum(mask.*thick)
